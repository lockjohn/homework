import React from 'react';
import ReactDOM from 'react-dom';
import {
  HashRouter,
} from 'react-router-dom';
import Rainbow from './components/rainbow.jsx';

/*have wrapped Rainbow Compo in Root with HashRouter
his will make the router available to all any descendent
React Router components such as <Route /> and <Link /> */
const Root = () => (
  <HashRouter>
    <Rainbow />
  </HashRouter>
);

document.addEventListener('DOMContentLoaded', () => {
  const main = document.getElementById('main');
  ReactDOM.render(
    <Root />,
    main
  );
});
