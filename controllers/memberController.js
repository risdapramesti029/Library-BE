// controllers/memberController.js
const memberService = require('../services/memberService');

const getMembers = async (req, res) => {
  try {
    const members = await memberService.getAllMembers();
    res.json(members);
  } catch (error) {
    console.error(error);
    res.status(500).send('Something went wrong');
  }
};

const createMember = async (req, res) => {
  try {
    const newMember = await memberService.addMember(req.body);
    res.status(201).json(newMember);
  } catch (error) {
    console.error(error);
    res.status(500).send('Something went wrong');
  }
};

module.exports = { getMembers, createMember };
