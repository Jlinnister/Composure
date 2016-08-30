import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';

import configureStore from './store/store';

document.addEventListener("DOMContentLoaded", () => {
  let store;
  console.log(window.currentUser);
  if (window.currentUser) {
    const initialState = {
      session: {
        current_user: window.currentUser,
        errors: [],
      },
    };
    store = configureStore(initialState);
  } else {
    window.store = store = configureStore();
  }

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
