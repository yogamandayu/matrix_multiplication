def main()
    arr = Array.new
    i=-1
    begin
        i = i+1
        row = createRow()
        col = createColumn()
        arr[i] = createMatrix(row,col)
        puts "Do you want to insert a matrix so it can be multiplicate?"
        answer = gets.chomp
    end while answer == 'Y'
    first = arr[0]
    for index in 1..arr.length-1 do
        first = matrixCalculation(first,arr[index])
    end

    puts first
end

def createRow()
    puts "How many row on this variable?"
    row = gets.chomp.to_i
    return row
end

def createColumn()
    puts "How many column on this variable?"
    col = gets.chomp.to_i
    return col
end

def createMatrix(row,col)
    arr = Array.new(row){Array.new(col)}
    for row in 0..arr.length-1 do 
        for col in 0..arr[0].length-1 do
            arr[row][col] = gets.chomp.to_i
        end
    end
    return arr
end

def matrixCalculation(matrik_A, matrik_B)
    if matrik_A.length == matrik_B[0].length
        matrik_C = Array.new(matrik_A.length){Array.new(matrik_B[0].length)}
        for i in 0..matrik_A.length-1 do
            for j in 0..matrik_A.length-1 do
                a = 0
                for k in 0..matrik_A[i].length-1 do
                    a += matrik_A[j][k]*matrik_B[k][i]
                end
                matrik_C[i][j] = a
            end
        end
        return matrik_C
    end
    return "Matrix multiplication requirement not met"
end

main()