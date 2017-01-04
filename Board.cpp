#include "Board.hpp"

Board::Board(){}

Board::~Board(){}

std::shared_ptr<Piece> Board::getPiece(int x, int y){
	return mBoard[x][y].mPiece;
}
