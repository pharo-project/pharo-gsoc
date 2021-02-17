import React from 'react';
import $ from "jquery";

import './style.css';
import ProjectIdeaShortSummary from './ProjectIdeaShortSummary';

const IDEAS_URL = 'https://raw.githubusercontent.com/olekscode/pharo-gsoc-ideas/master/data/ideas.json';

const getContentsOfFileFromURL = url => {
  var result = null;
  $.ajax({
    url: url,
    type: 'get',
    dataType: 'text',
    async: false,
    success: function(data) {
      result = data;
    }
  });
  return result;
}

const getJsonFromURL = url =>
  JSON.parse(getContentsOfFileFromURL(url));

const IdeasPage = () => {
  const ideas = getJsonFromURL(IDEAS_URL);

  const ideasHtml = ideas.map(idea =>
    <ProjectIdeaShortSummary idea={idea} />
  );

  return (
    <main>
      <h1>Project Ideas</h1>
      <div class="ideas">
        {ideasHtml}
      </div>
    </main>
  );
}

export default IdeasPage;
