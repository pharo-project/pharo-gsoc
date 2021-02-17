import React from 'react';
import { Link } from 'react-router-dom';

import './style.css';
import * as ROUTES from '../../constants/routes';

const Navigation = () => (
  <div id="navbar">
    <div id="navbar-buttons">
      <ul>
        <li>
          <Link to={ROUTES.LANDING}>Home</Link>
        </li>
        <li>
          <Link to={ROUTES.IDEAS}>Project Ideas</Link>
        </li>
      </ul>
    </div>
  </div>
);

export default Navigation;
