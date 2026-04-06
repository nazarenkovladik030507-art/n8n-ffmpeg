const axios = require('axios');

global.$helpers = {
  httpRequest: async (options) => {
    const response = await axios({
      method: options.method || 'GET',
      url: options.url,
      data: options.body,
      headers: options.headers || {}
    });
    return response.data;
  }
};

module.exports = global.$helpers;
