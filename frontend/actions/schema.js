import { Schema, arrayOf } from 'normalizr';

export const textArea = new Schema('text_areas');
export const arrayOfTextAreas = arrayOf(textArea);
