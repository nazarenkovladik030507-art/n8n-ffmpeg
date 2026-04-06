const axios = require('axios');

module.exports = {
  httpRequest: async function(options) {
    try {
      const response = await axios({
        method: options.method || 'GET',
        url: options.url,
        data: options.body,
        headers: options.headers || { 'Content-Type': 'application/json' },
        timeout: options.timeout || 30000
      });
      return response.data;
    } catch (error) {
      throw new Error(`HTTP Request failed: ${error.message}`);
    }
  }
};
