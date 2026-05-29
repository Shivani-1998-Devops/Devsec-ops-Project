// src/axios.js
import axios from 'axios';

const instance = axios.create({
  baseURL: process.env.REACT_APP_BACKEND_URL || 'http://k8s-threetie-backendi-f2a2a06d08-1350903822.ap-south-1.elb.amazonaws.com',
});

instance.interceptors.request.use((config) => {
  const token = localStorage.getItem('token');
  if (token) config.headers['Authorization'] = `Bearer ${token}`;
  return config;
});

export default instance;
