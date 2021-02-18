import React from 'react';
import {
  BrowserRouter as Router,
  Route
} from 'react-router-dom';

import Navigation from '../Navigation';
import LandingPage from '../LandingPage';
import IdeasPage from '../IdeasPage';
import MentorsPage from '../MentorsPage';
import CallForStudentsPage from '../CallForStudentsPage';

import * as ROUTES from '../../constants/routes';

const App = () => (
  <Router>
    <div>
      <Navigation />

      <Route exact path={ROUTES.LANDING} component={LandingPage} />
      <Route path={ROUTES.IDEAS} component={IdeasPage} />
      <Route path={ROUTES.MENTORS} component={MentorsPage} />
      <Route path={ROUTES.CALL_FOR_STUDENTS} component={CallForStudentsPage} />
    </div>
  </Router>
);

export default App;
