'use strict';

module.exports.hello = (event, context, callback) => {
  const response = {
    statusCode: 200,
    body: JSON.stringify({
      message: 'Hello LEGO Unikitty! Your function executed successfully!',
      input: event,
    }),
  };

  callback(null, response);
};
