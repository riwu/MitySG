import { connect } from 'react-redux';
import Favourites from './Favourites';
import { removeFromFavourites, setCurrentTrip, setSlideIndex } from '../../actions';

const mapStateToProps = state => ({
  favourites: state.favourites,
  busStops: state.busStops,
});

export default connect(
  mapStateToProps,
  { removeFromFavourites, setCurrentTrip, setSlideIndex },
)(Favourites);
