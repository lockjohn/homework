import React from 'react';
import { Provider } from 'react-redux';
import GiphysSearchContainer from './giphys_search_container';

const Root = ({store}) => {
  return (
    <Provider store={store}>
      <h1>Root is rendering</h1>
      <GiphysSearchContainer />
    </Provider>
  )};

export default Root;
