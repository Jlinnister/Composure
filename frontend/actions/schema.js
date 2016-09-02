import { Schema, arrayOf } from 'normalizr';

export const textArea = new Schema('text_areas');
export const element = new Schema('elements');
export const arrayOfTextAreas = arrayOf(textArea);
export const arrayOfElements = arrayOf(element);
