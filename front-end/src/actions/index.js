import api from './api';
import push from '../push';

export const getBuses = (dispatch) => {
  api
    .getBuses()
    .then((buses) => {
      dispatch({
        type: 'RECEIVE_BUSES',
        buses,
      });
    })
    .catch(err => console.log(err));
};

export const getBusStops = (dispatch) => {
  api
    .getBusStops()
    .then((busStops) => {
      dispatch({
        type: 'RECEIEVE_BUS_STOPS',
        busStops,
      });
    })
    .catch(err => console.log(err));
};

export const getTrainStations = (dispatch) => {
  api
    .getTrainStations()
    .then((trainStations) => {
      dispatch({
        type: 'RECEIVE_TRAIN_STATIONS',
        trainStations,
      });
    })
    .catch(err => console.log(err));
};

export const addToFavourites = favourite => ({
  type: 'ADD_TO_FAVOURITES',
  favourite,
});

export const removeFromFavourites = favouriteStringified => ({
  type: 'REMOVE_FROM_FAVOURITES',
  favouriteStringified,
});

export const setSlideIndex = slideIndex => ({
  type: 'SET_SLIDE_INDEX',
  slideIndex,
});

export const setNotificationValue = value => ({
  type: 'SET_NOTIFICATION_VALUE',
  value,
});

export const setCurrentTrip = (currentTrip, trainStations) => (dispatch) => {
  dispatch({
    type: 'SET_ETA',
    eta: null,
  });
  dispatch({
    type: 'SET_CURRENT_TRIP',
    currentTrip: currentTrip && {
      ...currentTrip,
      started: Date.now(),
    },
  });
  if (!('serviceWorker' in navigator)) {
    if (currentTrip) {
      alert('Push notification does not work on iOS / Safari!');
    }
    return;
  }

  push.unsubscribe();
  if (!currentTrip) return;
  if (currentTrip.bus === undefined) {
    api.startTrainTrip({
      timeBeforeArrivalToNotify: currentTrip.timeBeforeArrivalToNotify,
      start: (trainStations[currentTrip.start] || {}).id,
      end: (trainStations[currentTrip.end] || {}).id,
    });
  } else {
    api.startBusTrip(currentTrip);
  }
};

export const getBusArrival = (start, end) => (dispatch) => {
  api.getBusArrival(start, end).then((eta) => {
    dispatch({
      type: 'SET_ETA',
      eta,
    });
  });
};

export const getTrainArrival = (start, end) => (dispatch) => {
  api.getTrainArrival(start, end).then((eta) => {
    dispatch({
      type: 'SET_ETA',
      eta,
    });
  });
};

export const setCurrentCoords = coords => ({
  type: 'SET_CURRENT_COORDS',
  coords,
});
