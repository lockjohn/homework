import * as APIUtil from '../util/api_util';
export const RECEIVE_SEARCH_GIPHYS = "RECEIVE_SEARCH_GIPHYS";
// export const REQUEST_SEARCH_GIPHYS = "REQUEST_SEARCH_GIPHYS";

//action creater
export const receiveSearchGiphys = giphys => {
  //make action object
  return {
    type: RECEIVE_SEARCH_GIPHYS,
    giphys
  }
};

//thunk action creater
export const fetchSearchGiphys = (searchTerm) => (dispatch) => {
  return APIUtil.fetchSearchGiphys(searchTerm)
  .then(giphys => dispatch(receiveSearchGiphys(giphys.data)))
};
