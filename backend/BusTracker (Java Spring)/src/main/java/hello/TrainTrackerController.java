package hello;

import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import hello.models.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static java.lang.Thread.sleep;

@RestController
public class TrainTrackerController {
    private TrainTimingController ttCon = new TrainTimingController();

    @RequestMapping(value = "/trainTracker/{start}/{end}", method = RequestMethod.POST)
    public int trainTracker(@PathVariable(value="start") String startID,
                               @PathVariable(value="end") String endID,
                               @RequestParam(value="alert", defaultValue="3") String alertString,
                               @RequestBody String subscription) {

        int travelTime = ttCon.getTrainTimingAPI(startID, endID);
        int alertTime = Integer.parseInt(alertString);
        int waitingTime = travelTime - alertTime;

        if (waitingTime < 0) {
            waitingTime = 0;
        }

        System.out.println("Travel Time: "+travelTime+", Alert Time: "+alertString+", Waiting Time: "+ waitingTime);

        try {
            wait(waitingTime * 1000);

            ObjectMapper objectMapper = new ObjectMapper();

            PushSubscription sub = objectMapper.readValue(subscription, PushSubscription.class);

            PushRequest pushReq = new PushRequest(sub, "You are reaching your destination");

            HttpResponse<String> resp = Unirest.post("https://huy3vicolc.execute-api.us-east-1.amazonaws.com/dev/push")
                    .body(objectMapper.writeValueAsString(pushReq))
                    .asString();

            System.out.println(resp.getBody());
        } catch (Exception e) {
            e.printStackTrace();

            return -1;
        }

        int reachingTime = travelTime < alertTime ? travelTime : alertTime;

        System.out.println("Train reaching in "+reachingTime+" mins");

        return reachingTime;
    }
}