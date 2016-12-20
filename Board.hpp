#ifndef BOARD_HPP
#define BOARD_HPP

#include <memory>
#include <array>
#include "Piece.hpp"

struct Case{
	Color mColor;
	std::shared_ptr<Piece> mPiece;
};

class Board{
public:
	Board();
	~Board();

	std::shared_ptr<Piece> getPiece(int x, int y);

private:
	std::array<std::array<Case,8>,8> mBoard;
};

#endif
