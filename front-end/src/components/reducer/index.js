import { combineReducers } from 'redux';
import buses from '../buses/reducers/buses';
import busStops from '../buses/reducers/busStops';
import favourites from '../favourites/reducers/favourites';
import slideIndex from './slideIndex';
import currentTrip from './currentTrip';

const reducer = combineReducers({
  buses,
  busStops,
  favourites,
  slideIndex,
  currentTrip,
});

export default reducer;
