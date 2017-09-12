import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);

  // Phase 1: Logging homework
  // Overwriting store.dispatch is an anti-pattern that we'd really like to avoid.
  // store.dispatch = addLoggingToDispatch(store);
  // Phase 2: Refactoring
  // store = applyMiddlewares(store, addLoggingToDispatch);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

// Phase 1: Logging homework
// const addLoggingToDispatch = (store) => {
//   const storeDispatch = store.dispatch;
//   return (action) => {
//     console.log('state before: ', store.getState());
//     console.log('Action: ', action);
//     storeDispatch(action);
//     console.log('state after: ', store.getState());
//   }
// }

// Phase 2: Refactoring
// const addLoggingToDispatch = store => next => action => {
//   console.log('state before: ', store.getState());
//   console.log('Action: ', action);
//   next(action);
//   console.log('state after: ', store.getState());
// };
//
// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((middleware) => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, {dispatch});
// };
