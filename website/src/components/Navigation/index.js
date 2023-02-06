import React from 'react';
import { Link } from 'react-router-dom';

import './style.css';
import * as ROUTES from '../../constants/routes';

import logo from '../../img/logo-small.png';

const Navigation = () => (
  <div id="navbar">
    <div id="navbar-buttons">
      <ul>
        <li>
          <Link to={ROUTES.LANDING}><img src={logo} alt='' /></Link>
        </li>
        <li>
          <Link className="navbar-button" to={ROUTES.LANDING}>Home</Link>
        </li>
        <li>
          <Link className="navbar-button" to={ROUTES.IDEAS}>Project Ideas</Link>
        </li>
      </ul>
    </div>
  </div>
);

export default Navigation;
