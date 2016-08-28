```
{
  current_user: {
    id: 1,
    username: "jlinnister",
    email: "jlin28@wustl.edu",
    avatar_url: "http://www.myavatar.com/avatar.jpg",
    profile_title: "Jeff Lin",
    profile_description: "Things I like to take pictures of",
  },
  forms: {
    sign_up: {errors: []},
    log_in: {errors: []},
    create_story: {errors: ["Add a title!", "Add a cover image!", "Include some content yo"]}
  },
  stories: {
    1: {
      title: "My Big Trip",
      description: "I went all over the place",
      user_id: 1,
      cover_image_id: 1,
      date_created: 2020-00-00 12:34:56 UTC,
      }
  },
  photos: {
    1: {
      url: "http://www.myphotos.com/3987.jpg",
      medium_url: "http://www.myphotos.com/3987_med.jpg",
      position: "1",
      full_width: true,
      story_id: 1
    },
    2: {
      url: "http://www.myphotos.com/2323.jpg",
      medium_url: "http://www.myphotos.com/2323_med.jpg",
      position: "3",
      full_width: false,
      story_id: 1
    },
    3: {
      url: "http://www.myphotos.com/2342.jpg",
      medium_url: "http://www.myphotos.com/2342_med.jpg",
      position: "4",
      full_width: false,
      story_id: 1
    }
  },
  text_areas: {
    1: {
      title: "Niagara Falls",
      body: "Too much water in one place",
      position: "2",
      story_id: 1
    },
    2: {
      title: "",
      body: "Can't wait for my next big trip",
      position: "5",
      story_id: 1
    }
  }
}
```
