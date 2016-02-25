var Observable = require('FuseJS/Observable');
var yoyo = Observable("yo");

function Message(icon, sender, subject, summary) {
				this.sender = sender;
				this.subject = subject;
				this.icon = icon;
				this.summary = summary;
			}

var messages = Observable(			
	new Message("contact2", "santa@claus.northpole", "Rumours have it you've been bad", "I heard you went to school without doing your homework."),
	new Message("contact3", "gina@hotmail.com", "Running late for dinner", "Sorry, babes, I am running a little late tonight, can you just start without me?"),
	new Message("contact4", "john@wayne.no", "Hello, pardaner", "I just got shot up bad at the Wounded Knee. I took a bullet to the knee."),
	new Message("contact1", "compulsive@liar.net", "EVERYWHERE!", "I'm telling you, there were penguins everywhere. As far as the eye could see."),
	new Message("contact2", "santa@claus.northpole", "Rumours have it you've been bad", "I heard you went to school without doing your homework."),
	new Message("contact3", "gina@hotmail.com", "Running late for dinner", "Sorry, babes, I am running a little late tonight, can you just start without me?"),
	new Message("contact4", "john@wayne.no", "Hello, pardaner", "I just got shot up bad at the Wounded Knee. I took a bullet to the knee."),
	new Message("contact1", "compulsive@liar.net", "EVERYWHERE!", "I'm telling you, there were penguins everywhere. As far as the eye could see."),
	new Message("contact2", "santa@claus.northpole", "Rumours have it you've been bad", "I heard you went to school without doing your homework."),
	new Message("contact3", "gina@hotmail.com", "Running late for dinner", "Sorry, babes, I am running a little late tonight, can you just start without me?"),
	new Message("contact4", "john@wayne.no", "Hello, pardaner", "I just got shot up bad at the Wounded Knee. I took a bullet to the knee."),
	new Message("contact1", "compulsive@liar.net", "EVERYWHERE!", "I'm telling you, there were penguins everywhere. As far as the eye could see."),
	new Message("contact2", "santa@claus.northpole", "Rumours have it you've been bad", "I heard you went to school without doing your homework."),
	new Message("contact3", "gina@hotmail.com", "Running late for dinner", "Sorry, babes, I am running a little late tonight, can you just start without me?"),
	new Message("contact4", "john@wayne.no", "Hello, pardaner", "I just got shot up bad at the Wounded Knee. I took a bullet to the knee."),
	new Message("contact1", "compulsive@liar.net", "EVERYWHERE!", "I'm telling you, there were penguins everywhere. As far as the eye could see.")
);


function removeItem(sender) {
	messages.remove(sender.data);
}

function postponeItem(sender) {
	messages.remove(sender.data);
	messages.add(sender.data);
}

module.exports = {
	messages : messages,
	yoyo : yoyo,
	removeItem : removeItem,
	postponeItem : postponeItem
};