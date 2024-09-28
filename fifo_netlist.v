/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Sat Sep 28 12:47:39 2024
/////////////////////////////////////////////////////////////


module fifo ( clk, rst_n, w_en, r_en, data_in, data_out, full, empty );
  input [7:0] data_in;
  output [7:0] data_out;
  input clk, rst_n, w_en, r_en;
  output full, empty;
  wire   N10, N11, N12, N13, \fifo[15][7] , \fifo[15][6] , \fifo[15][5] ,
         \fifo[15][4] , \fifo[15][3] , \fifo[15][2] , \fifo[15][1] ,
         \fifo[15][0] , \fifo[14][7] , \fifo[14][6] , \fifo[14][5] ,
         \fifo[14][4] , \fifo[14][3] , \fifo[14][2] , \fifo[14][1] ,
         \fifo[14][0] , \fifo[13][7] , \fifo[13][6] , \fifo[13][5] ,
         \fifo[13][4] , \fifo[13][3] , \fifo[13][2] , \fifo[13][1] ,
         \fifo[13][0] , \fifo[12][7] , \fifo[12][6] , \fifo[12][5] ,
         \fifo[12][4] , \fifo[12][3] , \fifo[12][2] , \fifo[12][1] ,
         \fifo[12][0] , \fifo[11][7] , \fifo[11][6] , \fifo[11][5] ,
         \fifo[11][4] , \fifo[11][3] , \fifo[11][2] , \fifo[11][1] ,
         \fifo[11][0] , \fifo[10][7] , \fifo[10][6] , \fifo[10][5] ,
         \fifo[10][4] , \fifo[10][3] , \fifo[10][2] , \fifo[10][1] ,
         \fifo[10][0] , \fifo[9][7] , \fifo[9][6] , \fifo[9][5] , \fifo[9][4] ,
         \fifo[9][3] , \fifo[9][2] , \fifo[9][1] , \fifo[9][0] , \fifo[8][7] ,
         \fifo[8][6] , \fifo[8][5] , \fifo[8][4] , \fifo[8][3] , \fifo[8][2] ,
         \fifo[8][1] , \fifo[8][0] , \fifo[7][7] , \fifo[7][6] , \fifo[7][5] ,
         \fifo[7][4] , \fifo[7][3] , \fifo[7][2] , \fifo[7][1] , \fifo[7][0] ,
         \fifo[6][7] , \fifo[6][6] , \fifo[6][5] , \fifo[6][4] , \fifo[6][3] ,
         \fifo[6][2] , \fifo[6][1] , \fifo[6][0] , \fifo[5][7] , \fifo[5][6] ,
         \fifo[5][5] , \fifo[5][4] , \fifo[5][3] , \fifo[5][2] , \fifo[5][1] ,
         \fifo[5][0] , \fifo[4][7] , \fifo[4][6] , \fifo[4][5] , \fifo[4][4] ,
         \fifo[4][3] , \fifo[4][2] , \fifo[4][1] , \fifo[4][0] , \fifo[3][7] ,
         \fifo[3][6] , \fifo[3][5] , \fifo[3][4] , \fifo[3][3] , \fifo[3][2] ,
         \fifo[3][1] , \fifo[3][0] , \fifo[2][7] , \fifo[2][6] , \fifo[2][5] ,
         \fifo[2][4] , \fifo[2][3] , \fifo[2][2] , \fifo[2][1] , \fifo[2][0] ,
         \fifo[1][7] , \fifo[1][6] , \fifo[1][5] , \fifo[1][4] , \fifo[1][3] ,
         \fifo[1][2] , \fifo[1][1] , \fifo[1][0] , \fifo[0][7] , \fifo[0][6] ,
         \fifo[0][5] , \fifo[0][4] , \fifo[0][3] , \fifo[0][2] , \fifo[0][1] ,
         \fifo[0][0] , N60, N61, N62, N63, N64, N65, N66, N67, n32, n33, n34,
         n35, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385;
  wire   [3:0] w_ptr;

  DFFX1_RVT \data_out_reg[0]  ( .D(n94), .CLK(n242), .Q(data_out[0]) );
  DFFX1_RVT \data_out_reg[1]  ( .D(n93), .CLK(n242), .Q(data_out[1]) );
  DFFX1_RVT \data_out_reg[2]  ( .D(n92), .CLK(n242), .Q(data_out[2]) );
  DFFX1_RVT \data_out_reg[3]  ( .D(n91), .CLK(n242), .Q(data_out[3]) );
  DFFX1_RVT \data_out_reg[4]  ( .D(n90), .CLK(n242), .Q(data_out[4]) );
  DFFX1_RVT \data_out_reg[5]  ( .D(n89), .CLK(n241), .Q(data_out[5]) );
  DFFX1_RVT \data_out_reg[6]  ( .D(n88), .CLK(n241), .Q(data_out[6]) );
  DFFX1_RVT \data_out_reg[7]  ( .D(n87), .CLK(n242), .Q(data_out[7]) );
  DFFX1_RVT \fifo_reg[11][0]  ( .D(n134), .CLK(n235), .Q(\fifo[11][0] ) );
  DFFX1_RVT \fifo_reg[11][7]  ( .D(n133), .CLK(n235), .Q(\fifo[11][7] ) );
  DFFX1_RVT \fifo_reg[11][1]  ( .D(n132), .CLK(n235), .Q(\fifo[11][1] ) );
  DFFX1_RVT \fifo_reg[11][2]  ( .D(n131), .CLK(n235), .Q(\fifo[11][2] ) );
  DFFX1_RVT \fifo_reg[11][3]  ( .D(n130), .CLK(n235), .Q(\fifo[11][3] ) );
  DFFX1_RVT \fifo_reg[11][4]  ( .D(n129), .CLK(n235), .Q(\fifo[11][4] ) );
  DFFX1_RVT \fifo_reg[11][5]  ( .D(n128), .CLK(n235), .Q(\fifo[11][5] ) );
  DFFX1_RVT \fifo_reg[11][6]  ( .D(n127), .CLK(n235), .Q(\fifo[11][6] ) );
  DFFX1_RVT \fifo_reg[15][0]  ( .D(n102), .CLK(n232), .Q(\fifo[15][0] ) );
  DFFX1_RVT \fifo_reg[15][7]  ( .D(n101), .CLK(n232), .Q(\fifo[15][7] ) );
  DFFX1_RVT \fifo_reg[15][1]  ( .D(n100), .CLK(n232), .Q(\fifo[15][1] ) );
  DFFX1_RVT \fifo_reg[15][2]  ( .D(n99), .CLK(n232), .Q(\fifo[15][2] ) );
  DFFX1_RVT \fifo_reg[15][3]  ( .D(n98), .CLK(n232), .Q(\fifo[15][3] ) );
  DFFX1_RVT \fifo_reg[15][4]  ( .D(n97), .CLK(n232), .Q(\fifo[15][4] ) );
  DFFX1_RVT \fifo_reg[15][5]  ( .D(n96), .CLK(n232), .Q(\fifo[15][5] ) );
  DFFX1_RVT \fifo_reg[15][6]  ( .D(n95), .CLK(n232), .Q(\fifo[15][6] ) );
  DFFX1_RVT \fifo_reg[7][0]  ( .D(n166), .CLK(n232), .Q(\fifo[7][0] ) );
  DFFX1_RVT \fifo_reg[7][7]  ( .D(n165), .CLK(n232), .Q(\fifo[7][7] ) );
  DFFX1_RVT \fifo_reg[7][1]  ( .D(n164), .CLK(n232), .Q(\fifo[7][1] ) );
  DFFX1_RVT \fifo_reg[7][2]  ( .D(n163), .CLK(n231), .Q(\fifo[7][2] ) );
  DFFX1_RVT \fifo_reg[7][3]  ( .D(n162), .CLK(n231), .Q(\fifo[7][3] ) );
  DFFX1_RVT \fifo_reg[7][4]  ( .D(n161), .CLK(n231), .Q(\fifo[7][4] ) );
  DFFX1_RVT \fifo_reg[7][5]  ( .D(n160), .CLK(n231), .Q(\fifo[7][5] ) );
  DFFX1_RVT \fifo_reg[7][6]  ( .D(n159), .CLK(n231), .Q(\fifo[7][6] ) );
  DFFX1_RVT \fifo_reg[3][0]  ( .D(n198), .CLK(n238), .Q(\fifo[3][0] ) );
  DFFX1_RVT \fifo_reg[3][7]  ( .D(n197), .CLK(n238), .Q(\fifo[3][7] ) );
  DFFX1_RVT \fifo_reg[3][1]  ( .D(n196), .CLK(n238), .Q(\fifo[3][1] ) );
  DFFX1_RVT \fifo_reg[3][2]  ( .D(n195), .CLK(n238), .Q(\fifo[3][2] ) );
  DFFX1_RVT \fifo_reg[3][3]  ( .D(n194), .CLK(n237), .Q(\fifo[3][3] ) );
  DFFX1_RVT \fifo_reg[3][4]  ( .D(n193), .CLK(n237), .Q(\fifo[3][4] ) );
  DFFX1_RVT \fifo_reg[3][5]  ( .D(n192), .CLK(n237), .Q(\fifo[3][5] ) );
  DFFX1_RVT \fifo_reg[3][6]  ( .D(n191), .CLK(n237), .Q(\fifo[3][6] ) );
  DFFX1_RVT \fifo_reg[9][0]  ( .D(n150), .CLK(n236), .Q(\fifo[9][0] ) );
  DFFX1_RVT \fifo_reg[9][7]  ( .D(n149), .CLK(n236), .Q(\fifo[9][7] ) );
  DFFX1_RVT \fifo_reg[9][1]  ( .D(n148), .CLK(n236), .Q(\fifo[9][1] ) );
  DFFX1_RVT \fifo_reg[9][2]  ( .D(n147), .CLK(n236), .Q(\fifo[9][2] ) );
  DFFX1_RVT \fifo_reg[9][3]  ( .D(n146), .CLK(n236), .Q(\fifo[9][3] ) );
  DFFX1_RVT \fifo_reg[9][4]  ( .D(n145), .CLK(n236), .Q(\fifo[9][4] ) );
  DFFX1_RVT \fifo_reg[9][5]  ( .D(n144), .CLK(n236), .Q(\fifo[9][5] ) );
  DFFX1_RVT \fifo_reg[9][6]  ( .D(n143), .CLK(n236), .Q(\fifo[9][6] ) );
  DFFX1_RVT \fifo_reg[13][0]  ( .D(n118), .CLK(n234), .Q(\fifo[13][0] ) );
  DFFX1_RVT \fifo_reg[13][7]  ( .D(n117), .CLK(n234), .Q(\fifo[13][7] ) );
  DFFX1_RVT \fifo_reg[13][1]  ( .D(n116), .CLK(n234), .Q(\fifo[13][1] ) );
  DFFX1_RVT \fifo_reg[13][2]  ( .D(n115), .CLK(n234), .Q(\fifo[13][2] ) );
  DFFX1_RVT \fifo_reg[13][3]  ( .D(n114), .CLK(n233), .Q(\fifo[13][3] ) );
  DFFX1_RVT \fifo_reg[13][4]  ( .D(n113), .CLK(n233), .Q(\fifo[13][4] ) );
  DFFX1_RVT \fifo_reg[13][5]  ( .D(n112), .CLK(n233), .Q(\fifo[13][5] ) );
  DFFX1_RVT \fifo_reg[13][6]  ( .D(n111), .CLK(n233), .Q(\fifo[13][6] ) );
  DFFX1_RVT \fifo_reg[5][0]  ( .D(n182), .CLK(n241), .Q(\fifo[5][0] ) );
  DFFX1_RVT \fifo_reg[5][7]  ( .D(n181), .CLK(n241), .Q(\fifo[5][7] ) );
  DFFX1_RVT \fifo_reg[5][1]  ( .D(n180), .CLK(n241), .Q(\fifo[5][1] ) );
  DFFX1_RVT \fifo_reg[5][2]  ( .D(n179), .CLK(n241), .Q(\fifo[5][2] ) );
  DFFX1_RVT \fifo_reg[5][3]  ( .D(n178), .CLK(n241), .Q(\fifo[5][3] ) );
  DFFX1_RVT \fifo_reg[5][4]  ( .D(n177), .CLK(n241), .Q(\fifo[5][4] ) );
  DFFX1_RVT \fifo_reg[5][5]  ( .D(n176), .CLK(n241), .Q(\fifo[5][5] ) );
  DFFX1_RVT \fifo_reg[5][6]  ( .D(n175), .CLK(n241), .Q(\fifo[5][6] ) );
  DFFX1_RVT \fifo_reg[1][0]  ( .D(n214), .CLK(n239), .Q(\fifo[1][0] ) );
  DFFX1_RVT \fifo_reg[1][7]  ( .D(n213), .CLK(n239), .Q(\fifo[1][7] ) );
  DFFX1_RVT \fifo_reg[1][1]  ( .D(n212), .CLK(n239), .Q(\fifo[1][1] ) );
  DFFX1_RVT \fifo_reg[1][2]  ( .D(n211), .CLK(n239), .Q(\fifo[1][2] ) );
  DFFX1_RVT \fifo_reg[1][3]  ( .D(n210), .CLK(n239), .Q(\fifo[1][3] ) );
  DFFX1_RVT \fifo_reg[1][4]  ( .D(n209), .CLK(n239), .Q(\fifo[1][4] ) );
  DFFX1_RVT \fifo_reg[1][5]  ( .D(n208), .CLK(n239), .Q(\fifo[1][5] ) );
  DFFX1_RVT \fifo_reg[1][6]  ( .D(n207), .CLK(n239), .Q(\fifo[1][6] ) );
  DFFX1_RVT \fifo_reg[10][0]  ( .D(n142), .CLK(n236), .Q(\fifo[10][0] ) );
  DFFX1_RVT \fifo_reg[10][7]  ( .D(n141), .CLK(n236), .Q(\fifo[10][7] ) );
  DFFX1_RVT \fifo_reg[10][1]  ( .D(n140), .CLK(n236), .Q(\fifo[10][1] ) );
  DFFX1_RVT \fifo_reg[10][2]  ( .D(n139), .CLK(n236), .Q(\fifo[10][2] ) );
  DFFX1_RVT \fifo_reg[10][3]  ( .D(n138), .CLK(n235), .Q(\fifo[10][3] ) );
  DFFX1_RVT \fifo_reg[10][4]  ( .D(n137), .CLK(n235), .Q(\fifo[10][4] ) );
  DFFX1_RVT \fifo_reg[10][5]  ( .D(n136), .CLK(n235), .Q(\fifo[10][5] ) );
  DFFX1_RVT \fifo_reg[10][6]  ( .D(n135), .CLK(n235), .Q(\fifo[10][6] ) );
  DFFX1_RVT \fifo_reg[14][0]  ( .D(n110), .CLK(n233), .Q(\fifo[14][0] ) );
  DFFX1_RVT \fifo_reg[14][7]  ( .D(n109), .CLK(n233), .Q(\fifo[14][7] ) );
  DFFX1_RVT \fifo_reg[14][1]  ( .D(n108), .CLK(n233), .Q(\fifo[14][1] ) );
  DFFX1_RVT \fifo_reg[14][2]  ( .D(n107), .CLK(n233), .Q(\fifo[14][2] ) );
  DFFX1_RVT \fifo_reg[14][3]  ( .D(n106), .CLK(n233), .Q(\fifo[14][3] ) );
  DFFX1_RVT \fifo_reg[14][4]  ( .D(n105), .CLK(n233), .Q(\fifo[14][4] ) );
  DFFX1_RVT \fifo_reg[14][5]  ( .D(n104), .CLK(n233), .Q(\fifo[14][5] ) );
  DFFX1_RVT \fifo_reg[14][6]  ( .D(n103), .CLK(n233), .Q(\fifo[14][6] ) );
  DFFX1_RVT \fifo_reg[6][0]  ( .D(n174), .CLK(n240), .Q(\fifo[6][0] ) );
  DFFX1_RVT \fifo_reg[6][7]  ( .D(n173), .CLK(n240), .Q(\fifo[6][7] ) );
  DFFX1_RVT \fifo_reg[6][1]  ( .D(n172), .CLK(n240), .Q(\fifo[6][1] ) );
  DFFX1_RVT \fifo_reg[6][2]  ( .D(n171), .CLK(n240), .Q(\fifo[6][2] ) );
  DFFX1_RVT \fifo_reg[6][3]  ( .D(n170), .CLK(n240), .Q(\fifo[6][3] ) );
  DFFX1_RVT \fifo_reg[6][4]  ( .D(n169), .CLK(n240), .Q(\fifo[6][4] ) );
  DFFX1_RVT \fifo_reg[6][5]  ( .D(n168), .CLK(n240), .Q(\fifo[6][5] ) );
  DFFX1_RVT \fifo_reg[6][6]  ( .D(n167), .CLK(n240), .Q(\fifo[6][6] ) );
  DFFX1_RVT \fifo_reg[2][0]  ( .D(n206), .CLK(n238), .Q(\fifo[2][0] ) );
  DFFX1_RVT \fifo_reg[2][7]  ( .D(n205), .CLK(n238), .Q(\fifo[2][7] ) );
  DFFX1_RVT \fifo_reg[2][1]  ( .D(n204), .CLK(n238), .Q(\fifo[2][1] ) );
  DFFX1_RVT \fifo_reg[2][2]  ( .D(n203), .CLK(n238), .Q(\fifo[2][2] ) );
  DFFX1_RVT \fifo_reg[2][3]  ( .D(n202), .CLK(n238), .Q(\fifo[2][3] ) );
  DFFX1_RVT \fifo_reg[2][4]  ( .D(n201), .CLK(n238), .Q(\fifo[2][4] ) );
  DFFX1_RVT \fifo_reg[2][5]  ( .D(n200), .CLK(n238), .Q(\fifo[2][5] ) );
  DFFX1_RVT \fifo_reg[2][6]  ( .D(n199), .CLK(n238), .Q(\fifo[2][6] ) );
  DFFX1_RVT \fifo_reg[8][0]  ( .D(n158), .CLK(n237), .Q(\fifo[8][0] ) );
  DFFX1_RVT \fifo_reg[8][7]  ( .D(n157), .CLK(n237), .Q(\fifo[8][7] ) );
  DFFX1_RVT \fifo_reg[8][1]  ( .D(n156), .CLK(n237), .Q(\fifo[8][1] ) );
  DFFX1_RVT \fifo_reg[8][2]  ( .D(n155), .CLK(n237), .Q(\fifo[8][2] ) );
  DFFX1_RVT \fifo_reg[8][3]  ( .D(n154), .CLK(n237), .Q(\fifo[8][3] ) );
  DFFX1_RVT \fifo_reg[8][4]  ( .D(n153), .CLK(n237), .Q(\fifo[8][4] ) );
  DFFX1_RVT \fifo_reg[8][5]  ( .D(n152), .CLK(n237), .Q(\fifo[8][5] ) );
  DFFX1_RVT \fifo_reg[8][6]  ( .D(n151), .CLK(n237), .Q(\fifo[8][6] ) );
  DFFX1_RVT \fifo_reg[12][0]  ( .D(n126), .CLK(n234), .Q(\fifo[12][0] ) );
  DFFX1_RVT \fifo_reg[12][7]  ( .D(n125), .CLK(n234), .Q(\fifo[12][7] ) );
  DFFX1_RVT \fifo_reg[12][1]  ( .D(n124), .CLK(n234), .Q(\fifo[12][1] ) );
  DFFX1_RVT \fifo_reg[12][2]  ( .D(n123), .CLK(n234), .Q(\fifo[12][2] ) );
  DFFX1_RVT \fifo_reg[12][3]  ( .D(n122), .CLK(n234), .Q(\fifo[12][3] ) );
  DFFX1_RVT \fifo_reg[12][4]  ( .D(n121), .CLK(n234), .Q(\fifo[12][4] ) );
  DFFX1_RVT \fifo_reg[12][5]  ( .D(n120), .CLK(n234), .Q(\fifo[12][5] ) );
  DFFX1_RVT \fifo_reg[12][6]  ( .D(n119), .CLK(n234), .Q(\fifo[12][6] ) );
  DFFX1_RVT \fifo_reg[4][0]  ( .D(n190), .CLK(n242), .Q(\fifo[4][0] ) );
  DFFX1_RVT \fifo_reg[4][7]  ( .D(n189), .CLK(n242), .Q(\fifo[4][7] ) );
  DFFX1_RVT \fifo_reg[4][1]  ( .D(n188), .CLK(n242), .Q(\fifo[4][1] ) );
  DFFX1_RVT \fifo_reg[4][2]  ( .D(n187), .CLK(n242), .Q(\fifo[4][2] ) );
  DFFX1_RVT \fifo_reg[4][3]  ( .D(n186), .CLK(n242), .Q(\fifo[4][3] ) );
  DFFX1_RVT \fifo_reg[4][4]  ( .D(n185), .CLK(n242), .Q(\fifo[4][4] ) );
  DFFX1_RVT \fifo_reg[4][5]  ( .D(n184), .CLK(n241), .Q(\fifo[4][5] ) );
  DFFX1_RVT \fifo_reg[4][6]  ( .D(n183), .CLK(n241), .Q(\fifo[4][6] ) );
  DFFX1_RVT \fifo_reg[0][0]  ( .D(n222), .CLK(n240), .Q(\fifo[0][0] ) );
  DFFX1_RVT \fifo_reg[0][7]  ( .D(n221), .CLK(n240), .Q(\fifo[0][7] ) );
  DFFX1_RVT \fifo_reg[0][1]  ( .D(n220), .CLK(n240), .Q(\fifo[0][1] ) );
  DFFX1_RVT \fifo_reg[0][2]  ( .D(n219), .CLK(n240), .Q(\fifo[0][2] ) );
  DFFX1_RVT \fifo_reg[0][3]  ( .D(n218), .CLK(n239), .Q(\fifo[0][3] ) );
  DFFX1_RVT \fifo_reg[0][4]  ( .D(n217), .CLK(n239), .Q(\fifo[0][4] ) );
  DFFX1_RVT \fifo_reg[0][5]  ( .D(n216), .CLK(n239), .Q(\fifo[0][5] ) );
  DFFX1_RVT \fifo_reg[0][6]  ( .D(n215), .CLK(n239), .Q(\fifo[0][6] ) );
  DFFX1_RVT \r_ptr_reg[0]  ( .D(n227), .CLK(n231), .Q(N10), .QN(n35) );
  DFFX1_RVT \r_ptr_reg[2]  ( .D(n85), .CLK(n231), .Q(N12), .QN(n33) );
  DFFX1_RVT \r_ptr_reg[1]  ( .D(n86), .CLK(n231), .Q(N11), .QN(n34) );
  DFFX1_RVT \r_ptr_reg[3]  ( .D(n84), .CLK(n231), .Q(N13), .QN(n32) );
  DFFX1_RVT \w_ptr_reg[1]  ( .D(n225), .CLK(n231), .Q(w_ptr[1]), .QN(n229) );
  DFFX1_RVT \w_ptr_reg[3]  ( .D(n223), .CLK(n232), .Q(w_ptr[3]), .QN(n228) );
  DFFX1_RVT \w_ptr_reg[2]  ( .D(n224), .CLK(n231), .Q(w_ptr[2]), .QN(n230) );
  DFFX1_RVT \w_ptr_reg[0]  ( .D(n226), .CLK(n231), .Q(w_ptr[0]) );
  AND2X2_RVT U218 ( .A1(n359), .A2(n350), .Y(n369) );
  AND2X2_RVT U219 ( .A1(n348), .A2(n374), .Y(n329) );
  AND2X2_RVT U220 ( .A1(n356), .A2(n350), .Y(n368) );
  AND2X2_RVT U221 ( .A1(n361), .A2(n364), .Y(n366) );
  AND2X2_RVT U222 ( .A1(n357), .A2(n348), .Y(n362) );
  AND2X2_RVT U223 ( .A1(n356), .A2(n374), .Y(n373) );
  AND2X2_RVT U224 ( .A1(n359), .A2(n364), .Y(n365) );
  AND2X2_RVT U225 ( .A1(n361), .A2(n357), .Y(n360) );
  AND2X2_RVT U226 ( .A1(n350), .A2(n348), .Y(n371) );
  AND2X2_RVT U227 ( .A1(n361), .A2(n374), .Y(n376) );
  AND2X2_RVT U228 ( .A1(n356), .A2(n364), .Y(n363) );
  AND2X2_RVT U229 ( .A1(n359), .A2(n357), .Y(n358) );
  AND2X2_RVT U230 ( .A1(N11), .A2(N10), .Y(n314) );
  AND2X4_RVT U231 ( .A1(n35), .A2(n34), .Y(n317) );
  AND2X2_RVT U232 ( .A1(n361), .A2(n350), .Y(n370) );
  AND2X2_RVT U233 ( .A1(n359), .A2(n374), .Y(n375) );
  AND2X2_RVT U234 ( .A1(n356), .A2(n357), .Y(n355) );
  AND2X2_RVT U235 ( .A1(n348), .A2(n364), .Y(n352) );
  AND2X4_RVT U236 ( .A1(N11), .A2(n35), .Y(n313) );
  AND2X4_RVT U237 ( .A1(N10), .A2(n34), .Y(n316) );
  NBUFFX2_RVT U238 ( .A(n244), .Y(n239) );
  NBUFFX2_RVT U239 ( .A(n244), .Y(n238) );
  NBUFFX2_RVT U240 ( .A(n243), .Y(n240) );
  NBUFFX2_RVT U241 ( .A(n245), .Y(n234) );
  NBUFFX2_RVT U242 ( .A(n246), .Y(n233) );
  NBUFFX2_RVT U243 ( .A(n244), .Y(n237) );
  NBUFFX2_RVT U244 ( .A(n245), .Y(n236) );
  NBUFFX2_RVT U245 ( .A(n245), .Y(n235) );
  NBUFFX2_RVT U246 ( .A(n246), .Y(n232) );
  NBUFFX2_RVT U247 ( .A(n243), .Y(n241) );
  NBUFFX2_RVT U248 ( .A(n243), .Y(n242) );
  NBUFFX2_RVT U249 ( .A(n246), .Y(n231) );
  NBUFFX2_RVT U250 ( .A(clk), .Y(n244) );
  NBUFFX2_RVT U251 ( .A(clk), .Y(n245) );
  NBUFFX2_RVT U252 ( .A(clk), .Y(n243) );
  NBUFFX2_RVT U253 ( .A(clk), .Y(n246) );
  AO22X1_RVT U254 ( .A1(\fifo[11][0] ), .A2(n314), .A3(\fifo[10][0] ), .A4(
        n313), .Y(n247) );
  AO221X1_RVT U255 ( .A1(\fifo[8][0] ), .A2(n317), .A3(\fifo[9][0] ), .A4(n316), .A5(n247), .Y(n255) );
  AND2X1_RVT U256 ( .A1(N13), .A2(n33), .Y(n319) );
  AO22X1_RVT U257 ( .A1(\fifo[15][0] ), .A2(n314), .A3(\fifo[14][0] ), .A4(
        n313), .Y(n248) );
  AO221X1_RVT U258 ( .A1(\fifo[12][0] ), .A2(n317), .A3(\fifo[13][0] ), .A4(
        n316), .A5(n248), .Y(n254) );
  AND2X1_RVT U259 ( .A1(N13), .A2(N12), .Y(n321) );
  AO22X1_RVT U260 ( .A1(\fifo[7][0] ), .A2(n314), .A3(\fifo[6][0] ), .A4(n313), 
        .Y(n249) );
  AO221X1_RVT U261 ( .A1(\fifo[4][0] ), .A2(n317), .A3(\fifo[5][0] ), .A4(n316), .A5(n249), .Y(n252) );
  AND2X1_RVT U262 ( .A1(N12), .A2(n32), .Y(n324) );
  AO22X1_RVT U263 ( .A1(\fifo[3][0] ), .A2(n314), .A3(\fifo[2][0] ), .A4(n313), 
        .Y(n250) );
  AO221X1_RVT U264 ( .A1(\fifo[0][0] ), .A2(n317), .A3(\fifo[1][0] ), .A4(n316), .A5(n250), .Y(n251) );
  AND2X1_RVT U265 ( .A1(n33), .A2(n32), .Y(n326) );
  AO22X1_RVT U266 ( .A1(n252), .A2(n324), .A3(n251), .A4(n326), .Y(n253) );
  AO221X1_RVT U267 ( .A1(n255), .A2(n319), .A3(n254), .A4(n321), .A5(n253), 
        .Y(N67) );
  AO22X1_RVT U268 ( .A1(\fifo[11][1] ), .A2(n314), .A3(\fifo[10][1] ), .A4(
        n313), .Y(n256) );
  AO221X1_RVT U269 ( .A1(\fifo[8][1] ), .A2(n317), .A3(\fifo[9][1] ), .A4(n316), .A5(n256), .Y(n264) );
  AO22X1_RVT U270 ( .A1(\fifo[15][1] ), .A2(n314), .A3(\fifo[14][1] ), .A4(
        n313), .Y(n257) );
  AO221X1_RVT U271 ( .A1(\fifo[12][1] ), .A2(n317), .A3(\fifo[13][1] ), .A4(
        n316), .A5(n257), .Y(n263) );
  AO22X1_RVT U272 ( .A1(\fifo[7][1] ), .A2(n314), .A3(\fifo[6][1] ), .A4(n313), 
        .Y(n258) );
  AO221X1_RVT U273 ( .A1(\fifo[4][1] ), .A2(n317), .A3(\fifo[5][1] ), .A4(n316), .A5(n258), .Y(n261) );
  AO22X1_RVT U274 ( .A1(\fifo[3][1] ), .A2(n314), .A3(\fifo[2][1] ), .A4(n313), 
        .Y(n259) );
  AO221X1_RVT U275 ( .A1(\fifo[0][1] ), .A2(n317), .A3(\fifo[1][1] ), .A4(n316), .A5(n259), .Y(n260) );
  AO22X1_RVT U276 ( .A1(n261), .A2(n324), .A3(n260), .A4(n326), .Y(n262) );
  AO221X1_RVT U277 ( .A1(n264), .A2(n319), .A3(n263), .A4(n321), .A5(n262), 
        .Y(N66) );
  AO22X1_RVT U278 ( .A1(\fifo[11][2] ), .A2(n314), .A3(\fifo[10][2] ), .A4(
        n313), .Y(n265) );
  AO221X1_RVT U279 ( .A1(\fifo[8][2] ), .A2(n317), .A3(\fifo[9][2] ), .A4(n316), .A5(n265), .Y(n273) );
  AO22X1_RVT U280 ( .A1(\fifo[15][2] ), .A2(n314), .A3(\fifo[14][2] ), .A4(
        n313), .Y(n266) );
  AO221X1_RVT U281 ( .A1(\fifo[12][2] ), .A2(n317), .A3(\fifo[13][2] ), .A4(
        n316), .A5(n266), .Y(n272) );
  AO22X1_RVT U282 ( .A1(\fifo[7][2] ), .A2(n314), .A3(\fifo[6][2] ), .A4(n313), 
        .Y(n267) );
  AO221X1_RVT U283 ( .A1(\fifo[4][2] ), .A2(n317), .A3(\fifo[5][2] ), .A4(n316), .A5(n267), .Y(n270) );
  AO22X1_RVT U284 ( .A1(\fifo[3][2] ), .A2(n314), .A3(\fifo[2][2] ), .A4(n313), 
        .Y(n268) );
  AO221X1_RVT U285 ( .A1(\fifo[0][2] ), .A2(n317), .A3(\fifo[1][2] ), .A4(n316), .A5(n268), .Y(n269) );
  AO22X1_RVT U286 ( .A1(n270), .A2(n324), .A3(n269), .A4(n326), .Y(n271) );
  AO221X1_RVT U287 ( .A1(n273), .A2(n319), .A3(n272), .A4(n321), .A5(n271), 
        .Y(N65) );
  AO22X1_RVT U288 ( .A1(\fifo[11][3] ), .A2(n314), .A3(\fifo[10][3] ), .A4(
        n313), .Y(n274) );
  AO221X1_RVT U289 ( .A1(\fifo[8][3] ), .A2(n317), .A3(\fifo[9][3] ), .A4(n316), .A5(n274), .Y(n282) );
  AO22X1_RVT U290 ( .A1(\fifo[15][3] ), .A2(n314), .A3(\fifo[14][3] ), .A4(
        n313), .Y(n275) );
  AO221X1_RVT U291 ( .A1(\fifo[12][3] ), .A2(n317), .A3(\fifo[13][3] ), .A4(
        n316), .A5(n275), .Y(n281) );
  AO22X1_RVT U292 ( .A1(\fifo[7][3] ), .A2(n314), .A3(\fifo[6][3] ), .A4(n313), 
        .Y(n276) );
  AO221X1_RVT U293 ( .A1(\fifo[4][3] ), .A2(n317), .A3(\fifo[5][3] ), .A4(n316), .A5(n276), .Y(n279) );
  AO22X1_RVT U294 ( .A1(\fifo[3][3] ), .A2(n314), .A3(\fifo[2][3] ), .A4(n313), 
        .Y(n277) );
  AO221X1_RVT U295 ( .A1(\fifo[0][3] ), .A2(n317), .A3(\fifo[1][3] ), .A4(n316), .A5(n277), .Y(n278) );
  AO22X1_RVT U296 ( .A1(n279), .A2(n324), .A3(n278), .A4(n326), .Y(n280) );
  AO221X1_RVT U297 ( .A1(n282), .A2(n319), .A3(n281), .A4(n321), .A5(n280), 
        .Y(N64) );
  AO22X1_RVT U298 ( .A1(\fifo[11][4] ), .A2(n314), .A3(\fifo[10][4] ), .A4(
        n313), .Y(n283) );
  AO221X1_RVT U299 ( .A1(\fifo[8][4] ), .A2(n317), .A3(\fifo[9][4] ), .A4(n316), .A5(n283), .Y(n291) );
  AO22X1_RVT U300 ( .A1(\fifo[15][4] ), .A2(n314), .A3(\fifo[14][4] ), .A4(
        n313), .Y(n284) );
  AO221X1_RVT U301 ( .A1(\fifo[12][4] ), .A2(n317), .A3(\fifo[13][4] ), .A4(
        n316), .A5(n284), .Y(n290) );
  AO22X1_RVT U302 ( .A1(\fifo[7][4] ), .A2(n314), .A3(\fifo[6][4] ), .A4(n313), 
        .Y(n285) );
  AO221X1_RVT U303 ( .A1(\fifo[4][4] ), .A2(n317), .A3(\fifo[5][4] ), .A4(n316), .A5(n285), .Y(n288) );
  AO22X1_RVT U304 ( .A1(\fifo[3][4] ), .A2(n314), .A3(\fifo[2][4] ), .A4(n313), 
        .Y(n286) );
  AO221X1_RVT U305 ( .A1(\fifo[0][4] ), .A2(n317), .A3(\fifo[1][4] ), .A4(n316), .A5(n286), .Y(n287) );
  AO22X1_RVT U306 ( .A1(n288), .A2(n324), .A3(n287), .A4(n326), .Y(n289) );
  AO221X1_RVT U307 ( .A1(n291), .A2(n319), .A3(n290), .A4(n321), .A5(n289), 
        .Y(N63) );
  AO22X1_RVT U308 ( .A1(\fifo[11][5] ), .A2(n314), .A3(\fifo[10][5] ), .A4(
        n313), .Y(n292) );
  AO221X1_RVT U309 ( .A1(\fifo[8][5] ), .A2(n317), .A3(\fifo[9][5] ), .A4(n316), .A5(n292), .Y(n300) );
  AO22X1_RVT U310 ( .A1(\fifo[15][5] ), .A2(n314), .A3(\fifo[14][5] ), .A4(
        n313), .Y(n293) );
  AO221X1_RVT U311 ( .A1(\fifo[12][5] ), .A2(n317), .A3(\fifo[13][5] ), .A4(
        n316), .A5(n293), .Y(n299) );
  AO22X1_RVT U312 ( .A1(\fifo[7][5] ), .A2(n314), .A3(\fifo[6][5] ), .A4(n313), 
        .Y(n294) );
  AO221X1_RVT U313 ( .A1(\fifo[4][5] ), .A2(n317), .A3(\fifo[5][5] ), .A4(n316), .A5(n294), .Y(n297) );
  AO22X1_RVT U314 ( .A1(\fifo[3][5] ), .A2(n314), .A3(\fifo[2][5] ), .A4(n313), 
        .Y(n295) );
  AO221X1_RVT U315 ( .A1(\fifo[0][5] ), .A2(n317), .A3(\fifo[1][5] ), .A4(n316), .A5(n295), .Y(n296) );
  AO22X1_RVT U316 ( .A1(n297), .A2(n324), .A3(n296), .A4(n326), .Y(n298) );
  AO221X1_RVT U317 ( .A1(n300), .A2(n319), .A3(n299), .A4(n321), .A5(n298), 
        .Y(N62) );
  AO22X1_RVT U318 ( .A1(\fifo[11][6] ), .A2(n314), .A3(\fifo[10][6] ), .A4(
        n313), .Y(n301) );
  AO221X1_RVT U319 ( .A1(\fifo[8][6] ), .A2(n317), .A3(\fifo[9][6] ), .A4(n316), .A5(n301), .Y(n309) );
  AO22X1_RVT U320 ( .A1(\fifo[15][6] ), .A2(n314), .A3(\fifo[14][6] ), .A4(
        n313), .Y(n302) );
  AO221X1_RVT U321 ( .A1(\fifo[12][6] ), .A2(n317), .A3(\fifo[13][6] ), .A4(
        n316), .A5(n302), .Y(n308) );
  AO22X1_RVT U322 ( .A1(\fifo[7][6] ), .A2(n314), .A3(\fifo[6][6] ), .A4(n313), 
        .Y(n303) );
  AO221X1_RVT U323 ( .A1(\fifo[4][6] ), .A2(n317), .A3(\fifo[5][6] ), .A4(n316), .A5(n303), .Y(n306) );
  AO22X1_RVT U324 ( .A1(\fifo[3][6] ), .A2(n314), .A3(\fifo[2][6] ), .A4(n313), 
        .Y(n304) );
  AO221X1_RVT U325 ( .A1(\fifo[0][6] ), .A2(n317), .A3(\fifo[1][6] ), .A4(n316), .A5(n304), .Y(n305) );
  AO22X1_RVT U326 ( .A1(n306), .A2(n324), .A3(n305), .A4(n326), .Y(n307) );
  AO221X1_RVT U327 ( .A1(n309), .A2(n319), .A3(n308), .A4(n321), .A5(n307), 
        .Y(N61) );
  AO22X1_RVT U328 ( .A1(\fifo[3][7] ), .A2(n314), .A3(\fifo[2][7] ), .A4(n313), 
        .Y(n310) );
  AO221X1_RVT U329 ( .A1(\fifo[0][7] ), .A2(n317), .A3(\fifo[1][7] ), .A4(n316), .A5(n310), .Y(n325) );
  AO22X1_RVT U330 ( .A1(\fifo[7][7] ), .A2(n314), .A3(\fifo[6][7] ), .A4(n313), 
        .Y(n311) );
  AO221X1_RVT U331 ( .A1(\fifo[4][7] ), .A2(n317), .A3(\fifo[5][7] ), .A4(n316), .A5(n311), .Y(n323) );
  AO22X1_RVT U332 ( .A1(\fifo[15][7] ), .A2(n314), .A3(\fifo[14][7] ), .A4(
        n313), .Y(n312) );
  AO221X1_RVT U333 ( .A1(\fifo[12][7] ), .A2(n317), .A3(\fifo[13][7] ), .A4(
        n316), .A5(n312), .Y(n320) );
  AO22X1_RVT U334 ( .A1(\fifo[11][7] ), .A2(n314), .A3(\fifo[10][7] ), .A4(
        n313), .Y(n315) );
  AO221X1_RVT U335 ( .A1(\fifo[8][7] ), .A2(n317), .A3(\fifo[9][7] ), .A4(n316), .A5(n315), .Y(n318) );
  AO22X1_RVT U336 ( .A1(n321), .A2(n320), .A3(n319), .A4(n318), .Y(n322) );
  AO221X1_RVT U337 ( .A1(n326), .A2(n325), .A3(n324), .A4(n323), .A5(n322), 
        .Y(N60) );
  INVX0_RVT U338 ( .A(n327), .Y(empty) );
  INVX0_RVT U339 ( .A(n328), .Y(full) );
  MUX21X1_RVT U340 ( .A1(\fifo[15][2] ), .A2(data_in[2]), .S0(n329), .Y(n99)
         );
  MUX21X1_RVT U341 ( .A1(\fifo[15][3] ), .A2(data_in[3]), .S0(n329), .Y(n98)
         );
  MUX21X1_RVT U342 ( .A1(\fifo[15][4] ), .A2(data_in[4]), .S0(n329), .Y(n97)
         );
  MUX21X1_RVT U343 ( .A1(\fifo[15][5] ), .A2(data_in[5]), .S0(n329), .Y(n96)
         );
  MUX21X1_RVT U344 ( .A1(\fifo[15][6] ), .A2(data_in[6]), .S0(n329), .Y(n95)
         );
  AO22X1_RVT U345 ( .A1(N67), .A2(n330), .A3(n331), .A4(data_out[0]), .Y(n94)
         );
  AO22X1_RVT U346 ( .A1(N66), .A2(n330), .A3(n331), .A4(data_out[1]), .Y(n93)
         );
  AO22X1_RVT U347 ( .A1(N65), .A2(n330), .A3(n331), .A4(data_out[2]), .Y(n92)
         );
  AO22X1_RVT U348 ( .A1(N64), .A2(n330), .A3(n331), .A4(data_out[3]), .Y(n91)
         );
  AO22X1_RVT U349 ( .A1(N63), .A2(n330), .A3(n331), .A4(data_out[4]), .Y(n90)
         );
  AO22X1_RVT U350 ( .A1(N62), .A2(n330), .A3(n331), .A4(data_out[5]), .Y(n89)
         );
  AO22X1_RVT U351 ( .A1(N61), .A2(n330), .A3(n331), .A4(data_out[6]), .Y(n88)
         );
  AO22X1_RVT U352 ( .A1(N60), .A2(n330), .A3(n331), .A4(data_out[7]), .Y(n87)
         );
  MUX21X1_RVT U353 ( .A1(n332), .A2(n333), .S0(n34), .Y(n86) );
  AND2X1_RVT U354 ( .A1(n330), .A2(N10), .Y(n333) );
  MUX21X1_RVT U355 ( .A1(n334), .A2(n335), .S0(n33), .Y(n85) );
  MUX21X1_RVT U356 ( .A1(n336), .A2(n337), .S0(n32), .Y(n84) );
  AND2X1_RVT U357 ( .A1(n335), .A2(N12), .Y(n337) );
  NOR3X0_RVT U358 ( .A1(n34), .A2(n35), .A3(n338), .Y(n335) );
  AO21X1_RVT U359 ( .A1(n330), .A2(n33), .A3(n334), .Y(n336) );
  AO21X1_RVT U360 ( .A1(n330), .A2(n34), .A3(n332), .Y(n334) );
  AO21X1_RVT U361 ( .A1(n330), .A2(n35), .A3(n331), .Y(n332) );
  MUX21X1_RVT U362 ( .A1(n331), .A2(n330), .S0(n35), .Y(n227) );
  INVX0_RVT U363 ( .A(n338), .Y(n330) );
  AND2X1_RVT U364 ( .A1(rst_n), .A2(n338), .Y(n331) );
  NAND2X0_RVT U365 ( .A1(r_en), .A2(n327), .Y(n338) );
  NAND4X0_RVT U366 ( .A1(n339), .A2(n340), .A3(n341), .A4(n342), .Y(n327) );
  XOR2X1_RVT U367 ( .A1(w_ptr[3]), .A2(n32), .Y(n340) );
  XOR2X1_RVT U368 ( .A1(w_ptr[0]), .A2(n35), .Y(n339) );
  AO21X1_RVT U369 ( .A1(n343), .A2(w_ptr[0]), .A3(n344), .Y(n226) );
  NAND3X0_RVT U370 ( .A1(n345), .A2(n346), .A3(n347), .Y(n225) );
  NAND2X0_RVT U371 ( .A1(n343), .A2(w_ptr[1]), .Y(n347) );
  MUX21X1_RVT U372 ( .A1(n348), .A2(n349), .S0(w_ptr[2]), .Y(n224) );
  AO221X1_RVT U373 ( .A1(w_ptr[3]), .A2(n349), .A3(n350), .A4(n351), .A5(n352), 
        .Y(n223) );
  AO21X1_RVT U374 ( .A1(n351), .A2(n353), .A3(n343), .Y(n349) );
  AND2X1_RVT U375 ( .A1(rst_n), .A2(n354), .Y(n343) );
  MUX21X1_RVT U376 ( .A1(\fifo[0][0] ), .A2(data_in[0]), .S0(n355), .Y(n222)
         );
  MUX21X1_RVT U377 ( .A1(\fifo[0][7] ), .A2(data_in[7]), .S0(n355), .Y(n221)
         );
  MUX21X1_RVT U378 ( .A1(\fifo[0][1] ), .A2(data_in[1]), .S0(n355), .Y(n220)
         );
  MUX21X1_RVT U379 ( .A1(\fifo[0][2] ), .A2(data_in[2]), .S0(n355), .Y(n219)
         );
  MUX21X1_RVT U380 ( .A1(\fifo[0][3] ), .A2(data_in[3]), .S0(n355), .Y(n218)
         );
  MUX21X1_RVT U381 ( .A1(\fifo[0][4] ), .A2(data_in[4]), .S0(n355), .Y(n217)
         );
  MUX21X1_RVT U382 ( .A1(\fifo[0][5] ), .A2(data_in[5]), .S0(n355), .Y(n216)
         );
  MUX21X1_RVT U383 ( .A1(\fifo[0][6] ), .A2(data_in[6]), .S0(n355), .Y(n215)
         );
  MUX21X1_RVT U384 ( .A1(\fifo[1][0] ), .A2(data_in[0]), .S0(n358), .Y(n214)
         );
  MUX21X1_RVT U385 ( .A1(\fifo[1][7] ), .A2(data_in[7]), .S0(n358), .Y(n213)
         );
  MUX21X1_RVT U386 ( .A1(\fifo[1][1] ), .A2(data_in[1]), .S0(n358), .Y(n212)
         );
  MUX21X1_RVT U387 ( .A1(\fifo[1][2] ), .A2(data_in[2]), .S0(n358), .Y(n211)
         );
  MUX21X1_RVT U388 ( .A1(\fifo[1][3] ), .A2(data_in[3]), .S0(n358), .Y(n210)
         );
  MUX21X1_RVT U389 ( .A1(\fifo[1][4] ), .A2(data_in[4]), .S0(n358), .Y(n209)
         );
  MUX21X1_RVT U390 ( .A1(\fifo[1][5] ), .A2(data_in[5]), .S0(n358), .Y(n208)
         );
  MUX21X1_RVT U391 ( .A1(\fifo[1][6] ), .A2(data_in[6]), .S0(n358), .Y(n207)
         );
  MUX21X1_RVT U392 ( .A1(\fifo[2][0] ), .A2(data_in[0]), .S0(n360), .Y(n206)
         );
  MUX21X1_RVT U393 ( .A1(\fifo[2][7] ), .A2(data_in[7]), .S0(n360), .Y(n205)
         );
  MUX21X1_RVT U394 ( .A1(\fifo[2][1] ), .A2(data_in[1]), .S0(n360), .Y(n204)
         );
  MUX21X1_RVT U395 ( .A1(\fifo[2][2] ), .A2(data_in[2]), .S0(n360), .Y(n203)
         );
  MUX21X1_RVT U396 ( .A1(\fifo[2][3] ), .A2(data_in[3]), .S0(n360), .Y(n202)
         );
  MUX21X1_RVT U397 ( .A1(\fifo[2][4] ), .A2(data_in[4]), .S0(n360), .Y(n201)
         );
  MUX21X1_RVT U398 ( .A1(\fifo[2][5] ), .A2(data_in[5]), .S0(n360), .Y(n200)
         );
  MUX21X1_RVT U399 ( .A1(\fifo[2][6] ), .A2(data_in[6]), .S0(n360), .Y(n199)
         );
  MUX21X1_RVT U400 ( .A1(\fifo[3][0] ), .A2(data_in[0]), .S0(n362), .Y(n198)
         );
  MUX21X1_RVT U401 ( .A1(\fifo[3][7] ), .A2(data_in[7]), .S0(n362), .Y(n197)
         );
  MUX21X1_RVT U402 ( .A1(\fifo[3][1] ), .A2(data_in[1]), .S0(n362), .Y(n196)
         );
  MUX21X1_RVT U403 ( .A1(\fifo[3][2] ), .A2(data_in[2]), .S0(n362), .Y(n195)
         );
  MUX21X1_RVT U404 ( .A1(\fifo[3][3] ), .A2(data_in[3]), .S0(n362), .Y(n194)
         );
  MUX21X1_RVT U405 ( .A1(\fifo[3][4] ), .A2(data_in[4]), .S0(n362), .Y(n193)
         );
  MUX21X1_RVT U406 ( .A1(\fifo[3][5] ), .A2(data_in[5]), .S0(n362), .Y(n192)
         );
  MUX21X1_RVT U407 ( .A1(\fifo[3][6] ), .A2(data_in[6]), .S0(n362), .Y(n191)
         );
  AND2X1_RVT U408 ( .A1(n228), .A2(n230), .Y(n357) );
  MUX21X1_RVT U409 ( .A1(\fifo[4][0] ), .A2(data_in[0]), .S0(n363), .Y(n190)
         );
  MUX21X1_RVT U410 ( .A1(\fifo[4][7] ), .A2(data_in[7]), .S0(n363), .Y(n189)
         );
  MUX21X1_RVT U411 ( .A1(\fifo[4][1] ), .A2(data_in[1]), .S0(n363), .Y(n188)
         );
  MUX21X1_RVT U412 ( .A1(\fifo[4][2] ), .A2(data_in[2]), .S0(n363), .Y(n187)
         );
  MUX21X1_RVT U413 ( .A1(\fifo[4][3] ), .A2(data_in[3]), .S0(n363), .Y(n186)
         );
  MUX21X1_RVT U414 ( .A1(\fifo[4][4] ), .A2(data_in[4]), .S0(n363), .Y(n185)
         );
  MUX21X1_RVT U415 ( .A1(\fifo[4][5] ), .A2(data_in[5]), .S0(n363), .Y(n184)
         );
  MUX21X1_RVT U416 ( .A1(\fifo[4][6] ), .A2(data_in[6]), .S0(n363), .Y(n183)
         );
  MUX21X1_RVT U417 ( .A1(\fifo[5][0] ), .A2(data_in[0]), .S0(n365), .Y(n182)
         );
  MUX21X1_RVT U418 ( .A1(\fifo[5][7] ), .A2(data_in[7]), .S0(n365), .Y(n181)
         );
  MUX21X1_RVT U419 ( .A1(\fifo[5][1] ), .A2(data_in[1]), .S0(n365), .Y(n180)
         );
  MUX21X1_RVT U420 ( .A1(\fifo[5][2] ), .A2(data_in[2]), .S0(n365), .Y(n179)
         );
  MUX21X1_RVT U421 ( .A1(\fifo[5][3] ), .A2(data_in[3]), .S0(n365), .Y(n178)
         );
  MUX21X1_RVT U422 ( .A1(\fifo[5][4] ), .A2(data_in[4]), .S0(n365), .Y(n177)
         );
  MUX21X1_RVT U423 ( .A1(\fifo[5][5] ), .A2(data_in[5]), .S0(n365), .Y(n176)
         );
  MUX21X1_RVT U424 ( .A1(\fifo[5][6] ), .A2(data_in[6]), .S0(n365), .Y(n175)
         );
  MUX21X1_RVT U425 ( .A1(\fifo[6][0] ), .A2(data_in[0]), .S0(n366), .Y(n174)
         );
  MUX21X1_RVT U426 ( .A1(\fifo[6][7] ), .A2(data_in[7]), .S0(n366), .Y(n173)
         );
  MUX21X1_RVT U427 ( .A1(\fifo[6][1] ), .A2(data_in[1]), .S0(n366), .Y(n172)
         );
  MUX21X1_RVT U428 ( .A1(\fifo[6][2] ), .A2(data_in[2]), .S0(n366), .Y(n171)
         );
  MUX21X1_RVT U429 ( .A1(\fifo[6][3] ), .A2(data_in[3]), .S0(n366), .Y(n170)
         );
  MUX21X1_RVT U430 ( .A1(\fifo[6][4] ), .A2(data_in[4]), .S0(n366), .Y(n169)
         );
  MUX21X1_RVT U431 ( .A1(\fifo[6][5] ), .A2(data_in[5]), .S0(n366), .Y(n168)
         );
  MUX21X1_RVT U432 ( .A1(\fifo[6][6] ), .A2(data_in[6]), .S0(n366), .Y(n167)
         );
  MUX21X1_RVT U433 ( .A1(\fifo[7][0] ), .A2(data_in[0]), .S0(n352), .Y(n166)
         );
  MUX21X1_RVT U434 ( .A1(\fifo[7][7] ), .A2(data_in[7]), .S0(n352), .Y(n165)
         );
  MUX21X1_RVT U435 ( .A1(\fifo[7][1] ), .A2(data_in[1]), .S0(n352), .Y(n164)
         );
  MUX21X1_RVT U436 ( .A1(\fifo[7][2] ), .A2(data_in[2]), .S0(n352), .Y(n163)
         );
  MUX21X1_RVT U437 ( .A1(\fifo[7][3] ), .A2(data_in[3]), .S0(n352), .Y(n162)
         );
  MUX21X1_RVT U438 ( .A1(\fifo[7][4] ), .A2(data_in[4]), .S0(n352), .Y(n161)
         );
  MUX21X1_RVT U439 ( .A1(\fifo[7][5] ), .A2(data_in[5]), .S0(n352), .Y(n160)
         );
  MUX21X1_RVT U440 ( .A1(\fifo[7][6] ), .A2(data_in[6]), .S0(n352), .Y(n159)
         );
  INVX0_RVT U441 ( .A(n367), .Y(n364) );
  MUX21X1_RVT U442 ( .A1(\fifo[8][0] ), .A2(data_in[0]), .S0(n368), .Y(n158)
         );
  MUX21X1_RVT U443 ( .A1(\fifo[8][7] ), .A2(data_in[7]), .S0(n368), .Y(n157)
         );
  MUX21X1_RVT U444 ( .A1(\fifo[8][1] ), .A2(data_in[1]), .S0(n368), .Y(n156)
         );
  MUX21X1_RVT U445 ( .A1(\fifo[8][2] ), .A2(data_in[2]), .S0(n368), .Y(n155)
         );
  MUX21X1_RVT U446 ( .A1(\fifo[8][3] ), .A2(data_in[3]), .S0(n368), .Y(n154)
         );
  MUX21X1_RVT U447 ( .A1(\fifo[8][4] ), .A2(data_in[4]), .S0(n368), .Y(n153)
         );
  MUX21X1_RVT U448 ( .A1(\fifo[8][5] ), .A2(data_in[5]), .S0(n368), .Y(n152)
         );
  MUX21X1_RVT U449 ( .A1(\fifo[8][6] ), .A2(data_in[6]), .S0(n368), .Y(n151)
         );
  MUX21X1_RVT U450 ( .A1(\fifo[9][0] ), .A2(data_in[0]), .S0(n369), .Y(n150)
         );
  MUX21X1_RVT U451 ( .A1(\fifo[9][7] ), .A2(data_in[7]), .S0(n369), .Y(n149)
         );
  MUX21X1_RVT U452 ( .A1(\fifo[9][1] ), .A2(data_in[1]), .S0(n369), .Y(n148)
         );
  MUX21X1_RVT U453 ( .A1(\fifo[9][2] ), .A2(data_in[2]), .S0(n369), .Y(n147)
         );
  MUX21X1_RVT U454 ( .A1(\fifo[9][3] ), .A2(data_in[3]), .S0(n369), .Y(n146)
         );
  MUX21X1_RVT U455 ( .A1(\fifo[9][4] ), .A2(data_in[4]), .S0(n369), .Y(n145)
         );
  MUX21X1_RVT U456 ( .A1(\fifo[9][5] ), .A2(data_in[5]), .S0(n369), .Y(n144)
         );
  MUX21X1_RVT U457 ( .A1(\fifo[9][6] ), .A2(data_in[6]), .S0(n369), .Y(n143)
         );
  MUX21X1_RVT U458 ( .A1(\fifo[10][0] ), .A2(data_in[0]), .S0(n370), .Y(n142)
         );
  MUX21X1_RVT U459 ( .A1(\fifo[10][7] ), .A2(data_in[7]), .S0(n370), .Y(n141)
         );
  MUX21X1_RVT U460 ( .A1(\fifo[10][1] ), .A2(data_in[1]), .S0(n370), .Y(n140)
         );
  MUX21X1_RVT U461 ( .A1(\fifo[10][2] ), .A2(data_in[2]), .S0(n370), .Y(n139)
         );
  MUX21X1_RVT U462 ( .A1(\fifo[10][3] ), .A2(data_in[3]), .S0(n370), .Y(n138)
         );
  MUX21X1_RVT U463 ( .A1(\fifo[10][4] ), .A2(data_in[4]), .S0(n370), .Y(n137)
         );
  MUX21X1_RVT U464 ( .A1(\fifo[10][5] ), .A2(data_in[5]), .S0(n370), .Y(n136)
         );
  MUX21X1_RVT U465 ( .A1(\fifo[10][6] ), .A2(data_in[6]), .S0(n370), .Y(n135)
         );
  MUX21X1_RVT U466 ( .A1(\fifo[11][0] ), .A2(data_in[0]), .S0(n371), .Y(n134)
         );
  MUX21X1_RVT U467 ( .A1(\fifo[11][7] ), .A2(data_in[7]), .S0(n371), .Y(n133)
         );
  MUX21X1_RVT U468 ( .A1(\fifo[11][1] ), .A2(data_in[1]), .S0(n371), .Y(n132)
         );
  MUX21X1_RVT U469 ( .A1(\fifo[11][2] ), .A2(data_in[2]), .S0(n371), .Y(n131)
         );
  MUX21X1_RVT U470 ( .A1(\fifo[11][3] ), .A2(data_in[3]), .S0(n371), .Y(n130)
         );
  MUX21X1_RVT U471 ( .A1(\fifo[11][4] ), .A2(data_in[4]), .S0(n371), .Y(n129)
         );
  MUX21X1_RVT U472 ( .A1(\fifo[11][5] ), .A2(data_in[5]), .S0(n371), .Y(n128)
         );
  MUX21X1_RVT U473 ( .A1(\fifo[11][6] ), .A2(data_in[6]), .S0(n371), .Y(n127)
         );
  INVX0_RVT U474 ( .A(n372), .Y(n350) );
  MUX21X1_RVT U475 ( .A1(\fifo[12][0] ), .A2(data_in[0]), .S0(n373), .Y(n126)
         );
  MUX21X1_RVT U476 ( .A1(\fifo[12][7] ), .A2(data_in[7]), .S0(n373), .Y(n125)
         );
  MUX21X1_RVT U477 ( .A1(\fifo[12][1] ), .A2(data_in[1]), .S0(n373), .Y(n124)
         );
  MUX21X1_RVT U478 ( .A1(\fifo[12][2] ), .A2(data_in[2]), .S0(n373), .Y(n123)
         );
  MUX21X1_RVT U479 ( .A1(\fifo[12][3] ), .A2(data_in[3]), .S0(n373), .Y(n122)
         );
  MUX21X1_RVT U480 ( .A1(\fifo[12][4] ), .A2(data_in[4]), .S0(n373), .Y(n121)
         );
  MUX21X1_RVT U481 ( .A1(\fifo[12][5] ), .A2(data_in[5]), .S0(n373), .Y(n120)
         );
  MUX21X1_RVT U482 ( .A1(\fifo[12][6] ), .A2(data_in[6]), .S0(n373), .Y(n119)
         );
  AND2X1_RVT U483 ( .A1(n344), .A2(n229), .Y(n356) );
  MUX21X1_RVT U484 ( .A1(\fifo[13][0] ), .A2(data_in[0]), .S0(n375), .Y(n118)
         );
  MUX21X1_RVT U485 ( .A1(\fifo[13][7] ), .A2(data_in[7]), .S0(n375), .Y(n117)
         );
  MUX21X1_RVT U486 ( .A1(\fifo[13][1] ), .A2(data_in[1]), .S0(n375), .Y(n116)
         );
  MUX21X1_RVT U487 ( .A1(\fifo[13][2] ), .A2(data_in[2]), .S0(n375), .Y(n115)
         );
  MUX21X1_RVT U488 ( .A1(\fifo[13][3] ), .A2(data_in[3]), .S0(n375), .Y(n114)
         );
  MUX21X1_RVT U489 ( .A1(\fifo[13][4] ), .A2(data_in[4]), .S0(n375), .Y(n113)
         );
  MUX21X1_RVT U490 ( .A1(\fifo[13][5] ), .A2(data_in[5]), .S0(n375), .Y(n112)
         );
  MUX21X1_RVT U491 ( .A1(\fifo[13][6] ), .A2(data_in[6]), .S0(n375), .Y(n111)
         );
  INVX0_RVT U492 ( .A(n345), .Y(n359) );
  NAND3X0_RVT U493 ( .A1(w_ptr[0]), .A2(n229), .A3(n351), .Y(n345) );
  INVX0_RVT U494 ( .A(n354), .Y(n351) );
  MUX21X1_RVT U495 ( .A1(\fifo[14][0] ), .A2(data_in[0]), .S0(n376), .Y(n110)
         );
  MUX21X1_RVT U496 ( .A1(\fifo[14][7] ), .A2(data_in[7]), .S0(n376), .Y(n109)
         );
  MUX21X1_RVT U497 ( .A1(\fifo[14][1] ), .A2(data_in[1]), .S0(n376), .Y(n108)
         );
  MUX21X1_RVT U498 ( .A1(\fifo[14][2] ), .A2(data_in[2]), .S0(n376), .Y(n107)
         );
  MUX21X1_RVT U499 ( .A1(\fifo[14][3] ), .A2(data_in[3]), .S0(n376), .Y(n106)
         );
  MUX21X1_RVT U500 ( .A1(\fifo[14][4] ), .A2(data_in[4]), .S0(n376), .Y(n105)
         );
  MUX21X1_RVT U501 ( .A1(\fifo[14][5] ), .A2(data_in[5]), .S0(n376), .Y(n104)
         );
  MUX21X1_RVT U502 ( .A1(\fifo[14][6] ), .A2(data_in[6]), .S0(n376), .Y(n103)
         );
  INVX0_RVT U503 ( .A(n346), .Y(n361) );
  NAND2X0_RVT U504 ( .A1(n344), .A2(w_ptr[1]), .Y(n346) );
  NOR2X0_RVT U505 ( .A1(n354), .A2(w_ptr[0]), .Y(n344) );
  MUX21X1_RVT U506 ( .A1(\fifo[15][0] ), .A2(data_in[0]), .S0(n329), .Y(n102)
         );
  MUX21X1_RVT U507 ( .A1(\fifo[15][7] ), .A2(data_in[7]), .S0(n329), .Y(n101)
         );
  MUX21X1_RVT U508 ( .A1(\fifo[15][1] ), .A2(data_in[1]), .S0(n329), .Y(n100)
         );
  AND2X1_RVT U509 ( .A1(w_ptr[3]), .A2(w_ptr[2]), .Y(n374) );
  NOR2X0_RVT U510 ( .A1(n354), .A2(n353), .Y(n348) );
  NAND2X0_RVT U511 ( .A1(w_en), .A2(n328), .Y(n354) );
  OR3X1_RVT U512 ( .A1(n377), .A2(n378), .A3(n379), .Y(n328) );
  MUX21X1_RVT U513 ( .A1(n380), .A2(n381), .S0(n353), .Y(n379) );
  NAND2X0_RVT U514 ( .A1(n381), .A2(n34), .Y(n380) );
  INVX0_RVT U515 ( .A(n341), .Y(n381) );
  XNOR2X1_RVT U516 ( .A1(N12), .A2(w_ptr[2]), .Y(n341) );
  MUX21X1_RVT U517 ( .A1(n382), .A2(n383), .S0(w_ptr[0]), .Y(n378) );
  AO21X1_RVT U518 ( .A1(n34), .A2(n229), .A3(N10), .Y(n383) );
  NAND2X0_RVT U519 ( .A1(n342), .A2(N10), .Y(n382) );
  XOR2X1_RVT U520 ( .A1(n34), .A2(w_ptr[1]), .Y(n342) );
  XNOR2X1_RVT U521 ( .A1(n32), .A2(n384), .Y(n377) );
  NAND2X0_RVT U522 ( .A1(n385), .A2(n372), .Y(n384) );
  NAND2X0_RVT U523 ( .A1(w_ptr[3]), .A2(n230), .Y(n372) );
  MUX21X1_RVT U524 ( .A1(n367), .A2(n228), .S0(n353), .Y(n385) );
  NAND2X0_RVT U525 ( .A1(w_ptr[0]), .A2(w_ptr[1]), .Y(n353) );
  NAND2X0_RVT U526 ( .A1(w_ptr[2]), .A2(n228), .Y(n367) );
endmodule

