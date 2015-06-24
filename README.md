# Project Cohort
Cohort will be an online character sheet manager and dice roller for use with tabletop RPGs. Currently we are writing user stories which can be found below:

1. A logged in user can create a new character and enter his/her stats in a reproduction of the pathfinder fillable character sheet. Calculations should be performed for skills, AC, init, base melee & ranged attacks
2. A logged in user can create a new campaign and designate other users that may join the campaign, either by selecting their user names via search or by using a tokenized link. 
3. A logged in user can add a character they have created to a campaign created by another user (join a campaign)
4. A logged in user can view the character sheets of any characters that have joined a campaign that the user owns. 
5. A logged in user can join a chat channel that includes all other users joined to a given campaign.
6. A logged in user can enter dice rolls (of the form 1d20+3d6+5) into the campaign chat and a chatbot will respond with the value of each die with the total. 
7. A logged in user can click abilities, skills and attacks on their character sheet to automatically enter the appropriate dice roll string to chat
8. A logged in user can enter a call of the form 'character#ability' into the campaign chat to roll an ability/skill/attack. If the user is the GM (creator of the current campaign) then they can do this for all characters in the campaign, otherwise only characters that they own. 
9. A logged in user who is the GM can enter a call of the form 'party#ability' to roll that ability for everyone in the party. 
10. A logged in user can create a new ability for a character, and then call it from chat like a preexisting ability. They should be able to define something like #newability = '1d20 + DEX + 8' where DEX is the current character's dexterity bonus, or #othernewability = 'character#basefullattackmelee + 5' In the latter case the output should be to roll the correct number of attacks for the character's level. Time permitting, also allowing something like 'character.haste#basefullattackmelee + 5' to include the effects of spells that effect the number of attack rolls. Rapid Shot and Multishot come to mind. 
11. A logged in user who is the GM should be able to flash images on the players' displays and play audio to them as well. 
12. A logged in user should be able to load the application as a Google Hangout plugin. 