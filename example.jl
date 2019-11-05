struct Queen
    row::Int
    col::Int

    function Queen(row, col)

        if row ∉ range(1, stop=8)
            throw(DomainError("row must be between 1 and 8 inclusively."))
        end

        if col ∉ range(1, stop=8)
            throw(DomainError("col must be between 1 and 8 inclusively."))
        end

        new(row, col)
    end
end


function can_attack(this::Queen, that::Queen)
    if this.row == that.row  &&  this.col == that.col
        throw(ArgumentError("The two queens cannot be on the same square."))
    end

    absΔrow = abs(that.row - this.row)
    absΔcol = abs(that.col - this.col)


    absΔrow == 0  ||
    absΔcol == 0  ||
    absΔrow == absΔcol
end
 
