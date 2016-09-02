export const ElementConstants = {
  RECEIVE_ELEMENTS: 'RECEIVE_ELEMENTS',
};

export const receiveElements = elements => ({
  type: ElementConstants.RECEIVE_STORIES,
  elements,
});
