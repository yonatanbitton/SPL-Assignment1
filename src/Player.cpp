/*
 * Player.cpp
 *
 *  Created on: Nov 18, 2016
 *      Author: bittoy
 */
#include "../include/Game.h"
#include "../include/Player.h"
#include "../include/Hand.h"
#include <sstream>

//Player

Player::Player(string playerName, int par_playerIndex):name(playerName), playerIndex(par_playerIndex){}

Player::Player():name(""),playerIndex(0){}


// Copy constructor
Player::Player(const Player& otherPlayer):Hand(otherPlayer),name(otherPlayer.getName()), playerIndex(otherPlayer.getPlayerIndex()){}
// Copy assignment operator
Player& Player::operator=(const Player& otherPlayer){
	if (this==&otherPlayer){
			return *this;
		}
	clean();
	for (unsigned int i=0; i<otherPlayer.getHand().size(); i++){
		addCard(*otherPlayer.getHand()[i]);
	}
	return *this;
}

string Player::getName() const{
	return name;
}


string Player::toString(){
	return name+": "+Hand::toString();
}

bool Player::isWinner(){
	return(getHand().size()==0);
}

int Player::getPlayerIndex() const{
	return playerIndex;
}

// Constructor
PlayerType1::PlayerType1(string playerName, int par_playerIndex):Player(playerName, par_playerIndex){}

// Copy constructor
PlayerType1::PlayerType1(const PlayerType1& otherPlayer):Player(otherPlayer){}

// Copy assignment operator
PlayerType1& PlayerType1::operator=(const PlayerType1& otherPlayer){
	Player::operator=(otherPlayer);
	return *this;
}

// Destructor - Naturally goes up

void PlayerType1::play(Game& g){
	Player* RequestFrom=&(g.mostCards(getPlayerIndex()));
//	cout << "The requested from is " << RequestFrom->getName() << endl;
	int ValueNeeded=MostCommonValue(g.getN());
	string valForPrint;
	if (ValueNeeded<1){
	if (ValueNeeded==-4) valForPrint="J";
		else if (ValueNeeded==-3) valForPrint="Q";
			else if (ValueNeeded==-2) valForPrint="K";
				else if (ValueNeeded==-1) valForPrint="A";
	}
	else {
		std::ostringstream oss;
		oss<< ValueNeeded;
		valForPrint=oss.str();
	}
	int k=0;
	for (unsigned int i=0; i<RequestFrom->getHand().size(); i++) // This loop moves cards from the requested player to me.
	{
		int otherNumber=RequestFrom->getHand()[i]->getNumber();
		if (otherNumber==-4) otherNumber=g.getN()+1;
		if (otherNumber==-3) otherNumber=g.getN()+2;
		if (otherNumber==-2) otherNumber=g.getN()+3;
		if (otherNumber==-1) otherNumber=g.getN()+4;
		if (RequestFrom->getHand()[i]->getNumber()==ValueNeeded){
			k++;
                        //Card* c = RequestFrom->getHand()[i]->makeCard();
			addCard(*RequestFrom->getHand()[i]);
			//cout << "I added it from the requested player to me, and now I want to remove it from the requested player hand" << endl;
			RequestFrom->removeCard(*RequestFrom->getHand()[i]);
			i=i-1;
		}
	}
	vector <Player*>& winners=g.getWinners();

	if (isWinner()){
		Player* p = makePlayer();
		winners.push_back(p); // This section checks for winners before the requested player draws card from the deck
	}
	if (RequestFrom->isWinner()) {
		Player* copyRequestFrom = RequestFrom->makePlayer();
		winners.push_back(copyRequestFrom);
	}
	if (winners.size()==2) {
		g.setFinished(); // It means that we've finished the game
		if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
		return;
	}
		else if (winners.size()==1) {
			g.setFinished(); // It means that we've finished the game
		if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
			return;
		}
	if(k!=0){  // Here the requested player draws card from the deck
			vector<Card*> asking;
			g.getGameDeck().drawKcards(k, asking);
			for(unsigned int j=0;j<asking.size();j++){
				RequestFrom->addCard(*asking[j]);
				delete asking[j];
			}
			if (RequestFrom->isWinner())
				{
				Player* copyRequestFrom = RequestFrom->makePlayer();
				winners.push_back(copyRequestFrom); // This line checks if the requested player is a winner after he drew cards from the deck.
					if (winners.size()==1) {
						g.setFinished(); // It means that we've finished the game
						if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint 							<< endl;	
						return;
					}
				}
			asking.clear();
	}
	else if (k==0) {
		if (g.getGameDeck().getNumberOfCards()>0){
			Card* c=g.getGameDeck().fetchCard();
			addCard(*c); //g.deck.fetchCard returns a pointer to a card, and addCard should get a card.
			// Because addCard duplicates AGAIN, I need to avoid loosing memery. -->
			delete (c);
		}
			
	}
	if (isWinner()) {
		Player * p2 = makePlayer();
		winners.push_back(p2); // This line checks if the requested player is a winner after he drew cards from the deck.
 		if (winners.size()==1) {
			g.setFinished(); // It means that we've finished the game
					if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl; 
			return;
		}
	}
 	if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
}

Player* PlayerType1::makePlayer(){
		Player* p = new PlayerType1(*this);
		return p;
	}

// Constructor
PlayerType2::PlayerType2(string playerName, int par_playerIndex):Player(playerName, par_playerIndex){}


// Copy constructor
PlayerType2::PlayerType2(const PlayerType2& otherPlayer):Player(otherPlayer){}


// Copy assignment operator
PlayerType2& PlayerType2::operator=(const PlayerType2& otherPlayer){
	Player::operator=(otherPlayer);
	return *this;
}
// Destructor - Naturally goes up

void PlayerType2::play(Game& g){
	Player* RequestFrom=&(g.mostCards(getPlayerIndex()));
	int ValueNeeded=LeastCommonValue(g.getN());
	string valForPrint;
	if (ValueNeeded<1){
	if (ValueNeeded==-4) valForPrint="J";
		else if (ValueNeeded==-3) valForPrint="Q";
			else if (ValueNeeded==-2) valForPrint="K";
				else if (ValueNeeded==-1) valForPrint="A";
	}
	else {
		std::ostringstream oss;
		oss<< ValueNeeded;
		valForPrint=oss.str();
	}
	int k=0;
	for (unsigned int i=0; i<RequestFrom->getHand().size(); i++) // This loop moves cards from the requested player to me.
	{
		if (RequestFrom->getHand()[i]->getNumber()==ValueNeeded){
                        k++;
                    //    Card* c = RequestFrom->getHand()[i]->makeCard();
			addCard(*RequestFrom->getHand()[i]);
			//cout << "I added it from the requested player to me, and now I want to remove it from the requested player hand" << endl;
			RequestFrom->removeCard(*RequestFrom->getHand()[i]);
			i=i-1;
		}
	}
	vector <Player*>& winners=g.getWinners();
	if (isWinner()){
		Player* p = makePlayer();
		winners.push_back(p); // This section checks for winners before the requested player draws card from the deck
	}
	if (RequestFrom->isWinner()) {
			Player* copyRequestFrom = RequestFrom->makePlayer();
			winners.push_back(copyRequestFrom);
		}
	if (winners.size()==2) {
		g.setFinished(); // It means that we've finished the game
 		if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
		return;
	}
		else if (winners.size()==1) {
			g.setFinished(); // It means that we've finished the game
 			if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
			return;
		}
	if(k!=0){ // Here the requested player draws card from the deck
		vector<Card*> asking;
		g.getGameDeck().drawKcards(k, asking);
		for(unsigned int j=0;j<asking.size();j++){
			RequestFrom->addCard(*asking[j]);
			delete asking[j];
		}
		if (RequestFrom->isWinner())
		{
			winners.push_back(RequestFrom); // This line checks if the requested player is a winner after he drew cards from the deck.
			if (winners.size()==1) {
				g.setFinished(); // It means that we've finished the game
				if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
				return;
			}
		}
		asking.clear();
	}
	else if (k==0) {
		if (g.getGameDeck().getNumberOfCards()>0){
			Card* c=g.getGameDeck().fetchCard();
			addCard(*c); //g.deck.fetchCard returns a pointer to a card, and addCard should get a card.
			// Because addCard duplicates AGAIN, I need to avoid loosing memery. -->
			delete (c);
		}
	}
	if (isWinner()) {
			Player * p2 = makePlayer();
			winners.push_back(p2); // This line checks if the requested player is a winner after he drew cards from the deck.
			if (winners.size()==1) {
				g.setFinished(); // It means that we've finished the game
				if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
				return;
			}
		}
	if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
}

Player* PlayerType2::makePlayer(){
		Player* p = new PlayerType2(*this);
		return p;
	}

PlayerType3::PlayerType3(string playerName, int playerIndex, int opponentIndex):Player(playerName, playerIndex), opponentIndex(0){}


// Copy constructor
PlayerType3::PlayerType3(const PlayerType3& otherPlayer):Player(otherPlayer), opponentIndex(otherPlayer.opponentIndex){}

// Copy assignment operator
PlayerType3& PlayerType3::operator=(const PlayerType3& otherPlayer){
	Player::operator=(otherPlayer);
	opponentIndex=otherPlayer.opponentIndex;
	return *this;
}
// Destructor - Naturally goes up

void PlayerType3::play(Game& g){
	if (g.getPlayers()[opponentIndex]->toString()==toString())
			opponentIndex=(getPlayerIndex()+1)%g.getPlayers().size();
	int ValueNeeded=HighestValueAtHand(g.getN());
	string valForPrint;
	if (ValueNeeded<1){
		if (ValueNeeded==-4) valForPrint="J";
			else if (ValueNeeded==-3) valForPrint="Q";
				else if (ValueNeeded==-2) valForPrint="K";
					else if (ValueNeeded==-1) valForPrint="A";
	}
	else {
		std::ostringstream oss;
		oss<< ValueNeeded;
		valForPrint=oss.str();
	}
	Player* RequestFrom=g.getPlayers()[opponentIndex];
	int k=0;
	for (unsigned int i=0; i<RequestFrom->getHand().size(); i++){ // This loop moves cards from the requested player to me.
		if (RequestFrom->getHand()[i]->getNumber()==ValueNeeded){
                        k++;
			addCard(*RequestFrom->getHand()[i]);
			RequestFrom->removeCard(*RequestFrom->getHand()[i]);
			i=i-1;
		}
	}
	vector <Player*>& winners=g.getWinners();
	Player* p = makePlayer();
	if (isWinner()) winners.push_back(p); // This section checks for winners before the requested player draws card from the deck
	if (RequestFrom->isWinner()) {
			Player* copyRequestFrom = RequestFrom->makePlayer();
			winners.push_back(copyRequestFrom);
		}
	if (winners.size()==2) {
		g.setFinished(); // It means that we've finished the game
		if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
		return;
	}
		else if (winners.size()==1) {
			g.setFinished(); // It means that we've finished the game
			if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
			return;
		}
	if(k!=0){ // Here the requested player draws card from the deck
		vector<Card*> asking;
		g.getGameDeck().drawKcards(k, asking);
		for(unsigned int j=0;j<asking.size();j++){
			RequestFrom->addCard(*asking[j]);
			delete asking[j];
		}
		if (RequestFrom->isWinner())
				{
			Player* copyRequestFrom = RequestFrom->makePlayer();
					winners.push_back(copyRequestFrom); // This line checks if the requested player is a winner after he drew cards from the deck.
					if (winners.size()==1) {
						g.setFinished(); // It means that we've finished the game
					if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << 						endl;	
						return;
					}
				}
		asking.clear();
	}
	else if (k==0) {
		if (g.getGameDeck().getNumberOfCards()>0){
			Card* c=g.getGameDeck().fetchCard();
			addCard(*c); //g.deck.fetchCard returns a pointer to a card, and addCard should get a card.
			// Because addCard duplicates AGAIN, I need to avoid loosing memery. -->
			delete (c);
		}
	}
	if (isWinner()) {
		Player * p2 = makePlayer();
		winners.push_back(p2); // This line checks if the requested player is a winner after he drew cards from the deck.
 				if (winners.size()==1) {
					g.setFinished(); // It means that we've finished the game
					if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
					return;
				}
			}
	if (g.getPlayers()[(opponentIndex+1)%g.getPlayers().size()]->toString()==toString())
		opponentIndex=(opponentIndex+2)%g.getPlayers().size();
	else
		opponentIndex=(opponentIndex+1)%g.getPlayers().size();
 	if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
	delete(p); // If the player isn't a player - i'm getting rid of him
}

Player* PlayerType3::makePlayer(){
		Player* p = new PlayerType3(*this);
		return p;
	}

PlayerType4::PlayerType4(string playerName, int playerIndex, int opponentIndex):Player(playerName, playerIndex), opponentIndex(0){}

// Copy constructor
PlayerType4::PlayerType4(const PlayerType4& otherPlayer):Player(otherPlayer), opponentIndex(otherPlayer.opponentIndex){}


// Copy assignment operator
PlayerType4& PlayerType4::operator=(const PlayerType4& otherPlayer){
	Player::operator=(otherPlayer);
	opponentIndex=otherPlayer.opponentIndex;
	return *this;
}
// Destructor - Naturally goes up

void PlayerType4::play(Game& g){
	if (g.getPlayers()[opponentIndex]->toString()==toString())
		opponentIndex=(opponentIndex+1)%g.getPlayers().size();
	int ValueNeeded=LowestValueAtHand(g.getN());
	string valForPrint;
	if (ValueNeeded<1){
		if (ValueNeeded==-4) valForPrint="J";
			else if (ValueNeeded==-3) valForPrint="Q";
				else if (ValueNeeded==-2) valForPrint="K";
					else if (ValueNeeded==-1) valForPrint="A";
	}
	else {
		std::ostringstream oss;
		oss<< ValueNeeded;
		valForPrint=oss.str();
	}
	Player* RequestFrom=g.getPlayers()[opponentIndex];
	int k=0;
	for (unsigned int i=0; i<RequestFrom->getHand().size(); i++){ // This loop moves cards from the requested player to me.
		if (RequestFrom->getHand()[i]->getNumber()==ValueNeeded){
			k++;
			addCard(*RequestFrom->getHand()[i]);
			RequestFrom->removeCard(*RequestFrom->getHand()[i]);
			i=i-1;

		}
	}
	vector <Player*>& winners=g.getWinners();
	if (isWinner()){
		Player* p = makePlayer();
		winners.push_back(p); // This section checks for winners before the requested player draws card from the deck
	}
	if (RequestFrom->isWinner()) {
			Player* copyRequestFrom = RequestFrom->makePlayer();
			winners.push_back(copyRequestFrom);
		}
	if (winners.size()==2) {
		g.setFinished(); // It means that we've finished the game
 		if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
		return;
	}
		else if (winners.size()==1) {
			g.setFinished(); // It means that we've finished the game
 			if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
			return;
		}

	if(k!=0){ // Here the requested player draws card from the deck
		vector<Card*> asking;
		g.getGameDeck().drawKcards(k, asking);
		for(unsigned int j=0;j<asking.size();j++){
			RequestFrom->addCard(*asking[j]);
			delete asking[j];
		}
		if (RequestFrom->isWinner())
				{
					Player* copyRequestFrom = RequestFrom->makePlayer();
					winners.push_back(copyRequestFrom); // This line checks if the requested player is a winner after he drew cards from the deck.
					if (winners.size()==1) {
						g.setFinished(); // It means that we've finished the game
						if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint 							<< endl;
						return;
					}
				}
		asking.clear();
	}
	else if (k==0) {
		if (g.getGameDeck().getNumberOfCards()>0){
			Card* c=g.getGameDeck().fetchCard();
			addCard(*c); //g.deck.fetchCard returns a pointer to a card, and addCard should get a card.
			// Because addCard duplicates AGAIN, I need to avoid loosing memery. -->
			delete (c);
		}
		}
	if (isWinner()) {
		Player * p2 = makePlayer();
		winners.push_back(p2); // This line checks if the requested player is a winner after he drew cards from the deck.
 				if (winners.size()==1) {
					g.setFinished(); // It means that we've finished the game
 					if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
					return;
				}
			}
	if (g.getPlayers()[(opponentIndex+1)%g.getPlayers().size()]->toString()==toString())
		opponentIndex=(opponentIndex+2)%g.getPlayers().size();
	else
		opponentIndex=(opponentIndex+1)%g.getPlayers().size();
 		if (g.getVerbal()==1) cout << getName() << " asked " << RequestFrom->getName() << " for the value " << valForPrint << endl;
}

Player* PlayerType4::makePlayer(){
		Player* p = new PlayerType4(*this);
		return p;
	}
