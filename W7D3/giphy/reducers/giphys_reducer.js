import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';
import merge from 'lodash/merge';

export const giphysReducer = (state = [], action) => {
  // Object.freeze(state);
  // let nextState = merge({}, state);

  switch (action.type) {
    case RECEIVE_SEARCH_GIPHYS:
      return action.giphys;
    default:
      return state;
  }
}
