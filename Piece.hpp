
#ifndef PIECE_HPP
#define PIECE_HPP

enum Color{
	Black,
	White,
	NoColor
};

enum PieceType{
	King,
	Queen,
	Tower,
	Bishop,
	Knight,
	Pawn,
	NoType
};

class Piece{
public:
	Piece(PieceType t,Color c);
	~Piece();
	
private:
	Color mColor;
	PieceType mType;
};

#endif
