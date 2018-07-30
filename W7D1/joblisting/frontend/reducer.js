const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  switch(action.type) {
    case "SWITCH_LOCATION":
      return {
        city: action.city,
        jobs: action.jobs, //remember action is an POJO, so action.key calls in value from POJO
      }
    default:
    return state;
  }
};

export default reducer;
