import { Template } from 'meteor/templating';
import { createGame } from './settings';

Template.GameCanvas.onRendered(function () {
    createGame('game-container');
});
