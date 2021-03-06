import {
  GET_LEAVE_TYPES,
  ADD_LEAVE_TYPE,
  DELETE_LEAVE_TYPE,
  UPDATE_LEAVE_TYPE,
  URL,
} from "./types";
import { createMessage, returnErrors } from "./messageActions";
import axios from "axios";
import { tokenConfig } from "./authActions";

export const getLeaveTypes = () => (dispatch, getState) => {
  axios
    .get(`${URL}api/leave-type/`, tokenConfig(getState))
    .then((leave_types) => {
      dispatch({
        type: GET_LEAVE_TYPES,
        payload: leave_types.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

export const addLeaveType = (leave_type) => (dispatch, getState) => {
  axios
    .post(`${URL}api/leave-type/`, leave_type, tokenConfig(getState))
    .then((res) => {
      dispatch(
        createMessage({
          addLeaveType: "Leave Type Added",
        })
      );
      dispatch({
        type: ADD_LEAVE_TYPE,
        payload: res.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

export const deleteLeaveType = (id) => (dispatch, getState) => {
  axios
    .delete(`${URL}api/leave-type/${id}/`, tokenConfig(getState))
    .then((leave_types) => {
      dispatch(
        createMessage({
          deleteLeaveType: "Leave Type Deleted",
        })
      );
      dispatch({
        type: DELETE_LEAVE_TYPE,
        payload: id,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};

export const updateLeaveType = (leave_type) => (dispatch, getState) => {
  axios
    .put(
      `${URL}api/leave-type/${leave_type.id}/`,
      leave_type,
      tokenConfig(getState)
    )
    .then((res) => {
      dispatch(
        createMessage({
          updateLeaveType: "Leave Type Updated",
        })
      );
      dispatch({
        type: UPDATE_LEAVE_TYPE,
        payload: res.data,
      });
    })
    .catch((err) =>
      dispatch(returnErrors(err.response.data, err.response.status))
    );
};
