export const TextAreaConstants = {
  CREATE_TEXT_AREA: 'CREATE_TEXT_AREA',
  UPDATE_TEXT_AREA: 'UPDATE_TEXT_AREA',
  DESTROY_TEXT_AREA: 'DESTROY_TEXT_AREA',
  RECEIVE_TEXT_AREA: 'RECEIVE_TEXT_AREA',
  RECEIVE_ERRORS: 'RECEIVE_ERRORS',
};

export const createTextArea = text_area => ({
  type: TextAreaConstants.CREATE_TEXT_AREA,
  text_area,
});

export const updateTextArea = text_area => ({
  type: TextAreaConstants.UPDATE_TEXT_AREA,
  text_area,
});

export const destroyTextArea = text_area => ({
  type: TextAreaConstants.DESTROY_TEXT_AREA,
  text_area,
});

export const receiveTextArea = text_area => ({
  type: TextAreaConstants.RECEIVE_TEXT_AREA,
  text_area,
});

export const receiveErrors = errors => ({
  type: TextAreaConstants.RECEIVE_ERRORS,
  errors,
});
