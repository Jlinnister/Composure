import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';

const Modal = require('react-modal');

document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const initialState = {
      session: {
        current_user: window.currentUser,
        errors: [],
      },
    };
    store = configureStore(initialState);
  } else {
    store = configureStore();
  }

  Modal.setAppElement(document.body)
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
