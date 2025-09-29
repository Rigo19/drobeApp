// Configuration file for API endpoints
// Change this to switch between development and production

const isDevelopment = false; // Set to true for local development, false for production

const API_BASE_URL = isDevelopment 
    ? "http://127.0.0.1:8000" 
    : "https://drobeapp-production.up.railway.app"; // Get this from Railway dashboard → Deployments tab

// Export all API endpoints
const API_ENDPOINTS = {
    // Authentication
    LOGIN: `${API_BASE_URL}/api/loginAttempt/`,
    CREATE_WEB_SESSION: `${API_BASE_URL}/api/createWebSession/`,
    DELETE_WEB_SESSION: `${API_BASE_URL}/api/deleteWebSession/`,
    REGISTRATION: `${API_BASE_URL}/api/createUser/`,
    
    // User management
    UPDATE_USER_INFO: `${API_BASE_URL}/api/updateUserAccountInfo`,
    UPDATE_PASSWORD: `${API_BASE_URL}/api/updatePassword`,
    VERIFY_PASSWORD: `${API_BASE_URL}/api/verifyPassword`,
    GET_USER_INFO: `${API_BASE_URL}/api/getUserAccountInfo`,
    
    // Clothing articles
    CREATE_CLOTHING_ARTICLE: `${API_BASE_URL}/api/createArticleOfClothing/`,
    GET_ALL_CLOTHING_ARTICLES: `${API_BASE_URL}/api/getAllClothingArticlesByUserID/`,
    UPDATE_CLOTHING_ARTICLE_DATA: `${API_BASE_URL}/api/updateClothingArticleData/`,
    UPDATE_CLOTHING_ARTICLE_IMAGE: `${API_BASE_URL}/api/updateClothingArticleImage/`,
    
    // Images
    CREATE_ARTICLE_IMAGE: `${API_BASE_URL}/api/createArticleOfClothingImage/`,
    GET_ARTICLE_IMAGE: `${API_BASE_URL}/api/get_images_for_clothing_article/`,
    
    // Outfits
    CREATE_OUTFIT: `${API_BASE_URL}/api/createOutfit/`,
    GET_OUTFITS: `${API_BASE_URL}/api/getOutfitsByUserID/`,
    CREATE_OUTFIT_IMAGE: `${API_BASE_URL}/api/createOutfitImage/`,
    GET_OUTFIT_IMAGE: `${API_BASE_URL}/api/getOutfitImageByID/`,
    MAKE_FAVORITE: `${API_BASE_URL}/api/makeFavorite/`,
    REMOVE_FAVORITE: `${API_BASE_URL}/api/removeFavorite/`,
    
    // Weather
    FETCH_WEATHER: `${API_BASE_URL}/api/fetchWeatherData`
};

// Export for use in other files
if (typeof module !== 'undefined' && module.exports) {
    module.exports = { API_ENDPOINTS, API_BASE_URL };
}
