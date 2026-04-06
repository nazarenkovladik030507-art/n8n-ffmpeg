const axios = require('axios');

if (!global.$helpers) {
  global.$helpers = {};
}

global.$helpers.httpRequest = async (options) => {
  try {
    const response = await axios({
      method: options.method || 'GET',
      url: options.url,
      data: options.body,
      headers: options.headers || {}
    });
    return response.data;
  } catch (error) {
    throw error;
  }
};
