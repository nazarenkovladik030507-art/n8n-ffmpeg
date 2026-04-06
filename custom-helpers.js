const axios = require('axios');

global.$helpers = {
  httpRequest: async (options) => {
    try {
      const response = await axios({
        method: options.method || 'GET',
        url: options.url,
        data: options.body,
        headers: options.headers || { 'Content-Type': 'application/json' }
      });
      return response.data;
    } catch (error) {
      throw error;
    }
  }
};
