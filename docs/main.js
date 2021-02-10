"use strict";

const ideasUrl = 'https://raw.githubusercontent.com/pharo-project/pharo-project-proposals/master/Topics.st';

function getContentsOfFileFromURL(url) {
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

function getJsonFromURL(url) {
  var jsonString = getContentsOfFileFromURL(url);
  return JSON.parse(jsonString);
}
