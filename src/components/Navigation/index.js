import React from 'react';
import { Link } from 'react-router-dom';
 
import * as ROUTES from '../../constants/routes';
 
const Navigation = () => (
  <div>
    <ul>
      <li>
        <Link to={ROUTES.LANDING}>Landing</Link>
      </li>
      <li>
        <Link to={ROUTES.IDEAS}>Project Ideas</Link>
      </li>
    </ul>
  </div>
);
 
export default Navigation;