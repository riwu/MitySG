import React from 'react';
import Paper from 'material-ui/Paper';
import TripInfo from './TripInfo';
import './Journey.css';

const API_KEY = 'AIzaSyA2AhaWAntXpasV6qrmiugcvBwaXDIyAls';

class Favourites extends React.Component {
  componentDidMount() {
    this.getArrivalTime();
    setInterval(() => {
      this.getArrivalTime();
    }, 60000);
  }

  getArrivalTime() {
    if (this.props.currentTrip.bus) {
      this.props.getBusArrival(this.props.startStop, this.props.endStop);
    } else {
      this.props.getTrainArrival((this.props.trainStations[this.props.startStop] || {}).id,
        (this.props.trainStations[this.props.endStop] || {}).id);
    }
  }

  renderTrip(start, end) {
    if (this.props.eta === null) {
      return (
        <div>
          Trip is not available
        </div>
      );
    }
    return (
      <div>
        <TripInfo
          trip={this.props.currentTrip}
          startStop={start}
          endStop={end}
        />
        {this.props.eta} min till arrival
      </div>
    );
  }

  render() {
    const { currentTrip, startStop, endStop } = this.props;
    const start = (currentTrip || {}).bus ? (startStop || {}).description : startStop;
    const end = (currentTrip || {}).bus ? (endStop || {}).description : endStop;
    const mrtString = (currentTrip || {}).bus ? '' : '+MRT+Station';
    return (
      <div>
        <Paper zDepth={3}>
          {currentTrip ? this.renderTrip(start, end) : <span styleName="label">You have not started a journey</span>
          }
        </Paper>
        <div styleName="map">
          <iframe
            styleName="mapframe"
            title="Google Maps"
            width="100%"
            height="400"
            frameBorder="0"
            src={`https://www.google.com/maps/embed/v1/directions?key=${API_KEY}` +
                 `&origin=${start + mrtString}&destination=${end + mrtString}&mode=transit`}
            allowFullScreen
          />
        </div>
      </div>
    );
  }
}

export default Favourites;
