import express from 'express';
import {
  addBook,
  getAllBooks,
  getBookById,
  editBookById,
  deleteBookById,
} from './controller.js';

const router = express.Router();

// Routes mapping
router.post('/books', addBook);
router.get('/books', getAllBooks);
router.get('/books/:bookId', getBookById);
router.put('/books/:bookId', editBookById);
router.delete('/books/:bookId', deleteBookById);

export default router;
