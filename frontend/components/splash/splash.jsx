import React from 'react';

import SplashNavBar from './splash_nav_bar';
import SplashMain from './splash_main';


export default class Splash extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <SplashMain />
      </div>
    );
  }
}
