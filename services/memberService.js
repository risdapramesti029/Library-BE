// services/memberService.js
const memberModel = require('../models/member');

const getAllMembers = async () => {
  return await memberModel.getAllMembers();
};

const addMember = async (member) => {
  return await memberModel.addMember(member);
};

module.exports = { getAllMembers, addMember };
