result_and = hebb([1, 1, -1, -1; 1, -1, 1, -1], [1, 1, 1, -1]);
disp("AND function:");
disp(result_and);

result_xor = hebb([1, 1, -1, -1; 1, -1, 1, -1], [1, -1, -1, 1]);
disp("XOR function:");
disp(result_xor);

result_or = hebb([1, 1, -1, -1; 1, -1, 1, -1], [1, -1, -1, -1]);
disp("OR function:");
disp(result_or);

result_nor = hebb([1, 1, -1, -1; 1, -1, 1, -1], [-1, 1, 1, 1]);
disp("NOR function:");
disp(result_nor);

result_nxor = hebb([1, 1, -1, -1; 1, -1, 1, -1], [-1, 1, 1, -1]);
disp("NXOR function:");
disp(result_nxor);

result1_nand = hebb([1, 1, -1, -1; 1, -1, 1, -1], [-1, -1, -1, 1]);
disp("NAND function:");
disp(result1_nand);

