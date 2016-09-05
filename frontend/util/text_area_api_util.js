const TextAreaUtil = {
  update(text_area, success, error) {
    $.ajax({
      url: `/api/text_areas/1`,
      method: 'PATCH',
      data: { text_area },
      success,
      error,
    });
  },

  delete(text_area, success) {
    $.ajax({
      url: `/api/text_areas/${text_area.id}`,
      method: 'DELETE',
      success
    });
  },

  create(text_area, success, error) {
    $.ajax({
      url: '/api/text_areas',
      method: 'POST',
      dataType: 'json',
      data: { text_area },
      success,
      error,
    });
  },
};

export default TextAreaUtil;
