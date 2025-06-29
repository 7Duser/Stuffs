return (function(...)
	local function q(r)
		return bit32.band(r, 255);
	end;
	local function r(s)
		return bit32.band(bit32.rshift(s, 8), 255);
	end;
	local function s(t)
		return bit32.band(bit32.rshift(t, 16), 255);
	end;
	local function t(u)
		return bit32.band(bit32.rshift(u, 24), 255);
	end;
	local function u(v)
		local w = bit32.rshift(v, 16);
		if w >= 32768 then
			return w - (65536);
		else
			return w;
		end;
	end;
	local v, w = {
		[47] = math.sign,
		[87] = vector.min,
		[36] = bit32.lshift,
		[84] = vector.abs,
		[67] = buffer.writeu8,
		[66] = buffer.readu8,
		[76] = buffer.readf64,
		[52] = table.insert,
		[11] = math.exp,
		[77] = buffer.writef64,
		[88] = vector.max,
		[74] = buffer.readf32,
		[68] = buffer.readi16,
		[26] = math.tanh,
		[28] = bit32.arshift,
		[6] = math.atan,
		[73] = buffer.writeu32,
		[64] = bit32.byteswap,
		[17] = math.log,
		[39] = bit32.rshift,
		[27] = math.tan,
		[12] = math.floor,
		[35] = bit32.lrotate,
		[72] = buffer.readu32,
		[23] = math.sinh,
		[2] = math.abs,
		[56] = bit32.countrz,
		[63] = tostring,
		[25] = math.sqrt,
		[18] = math.max,
		[83] = vector.ceil,
		[59] = bit32.extract,
		[42] = string.char,
		[9] = math.cos,
		[53] = table.unpack,
		[14] = math.frexp,
		[75] = buffer.writef32,
		[10] = math.deg,
		[69] = buffer.readu16,
		[49] = rawset,
		[81] = vector.dot,
		[50] = rawget,
		[0] = nil,
		[34] = bit32.extract,
		[45] = string.sub,
		[43] = string.len,
		[51] = rawequal,
		[86] = vector.clamp,
		[8] = math.cosh,
		[4] = math.asin,
		[37] = bit32.replace,
		[48] = math.round,
		[62] = tonumber,
		[60] = getmetatable,
		[32] = bit32.bxor,
		[13] = math.fmod,
		[19] = math.min,
		[30] = bit32.bnot,
		[29] = bit32.band,
		[65] = buffer.readi8,
		[57] = select,
		[24] = math.sin,
		[5] = math.atan2,
		[58] = rawlen,
		[80] = vector.cross,
		[82] = vector.floor,
		[1] = assert,
		[55] = bit32.countlz,
		[79] = vector.normalize,
		[89] = math.lerp,
		[70] = buffer.writeu16,
		[3] = math.acos,
		[54] = vector,
		[71] = buffer.readi32,
		[46] = math.clamp,
		[85] = vector.sign,
		[44] = typeof,
		[7] = math.ceil,
		[15] = math.ldexp,
		[38] = bit32.rrotate,
		[33] = bit32.btest,
		[20] = math.modf,
		[41] = string.byte,
		[22] = math.rad,
		[16] = math.log10,
		[90] = debug.info,
		[78] = vector.magnitude,
		[61] = setmetatable,
		[31] = bit32.bor,
		[40] = type,
		[21] = math.pow
	}, "736b69646675736361746f7220626266393333310100000000000f00000001000000000000000002050000007072696e7400021400000057656c636f6d6520746f204959204c6f61646572020700000067657466656e760002090000005363726970744b657902050000006572726f7200021b00000067657466656e7628292e5363726970744b6579206973206e696c21020c0000001951764a2f0e5f081a3e5a18020b0000006a3a1f2e497b2c6b7b4a35021f00000067657466656e7628292e5363726970744b657920697320696e76616c696421025e0000001e214f46260659252b1d48330659303a004c630611333a0a2c491a0d22381c1b6c5d0b373f41462a0611232a1a5226001a39261b442d06573527020e06161e3301360e2a1c1f3f260655260b1033240b0e2e130a222d1d0e301d0c242b0a020700000056486f214372792400000041000000400000000c0102000000104005020300150102010c02050000004040150201020f01025406000000190105000c020800000070400503090015020201160001000602000005030a0005040b00150203021b010600020000000c0208000000704005030c0015020201160001000c020200000010400603000005040d0005050e00150303001502000116000100010000000000000000000c00000001000000000000f03f0206000000737472696e670204000000627974650002050000006269743332020400000062786f72000204000000636861720002050000007461626c650206000000636f6e636174002a00000035020000000000003403010004060100340400000405010038041e002809060025080903270708004a2900050600000006090000060a06000c08030000081080150803024a29010507000000060a0100060b07000c09030000081080150903024a20080509000000060c0800060d09000c0b060000144080150b0302492a0b020c0a0800001c1080150a02020e0a02063904e2ff0c040b000028908006050200150402001604000000000000";
	local function Deserialize()
		local Bytecode, Pointer = buffer.fromstring(w:gsub("..", function(Bytecode)
			return string.char(tonumber(Bytecode, 16));
		end)), 20;
		local function A()
			local B, C, D = {}, {}, {};
			local E, F = "", {
				[9] = setmetatable({}, {
					__index = B
				}),
				[31] = setmetatable({}, {
					__index = C
				}),
				[8] = setmetatable({}, {
					__index = D
				})
			};
			F[126] = buffer.readi32(Bytecode, Pointer);
			Pointer = Pointer + 4;
			while true do
				local G = buffer.readu8(Bytecode, Pointer);
				Pointer = Pointer + 1;
				if G ~= 0 then
					E = E .. string.char(G);
				else
					break;
				end;
			end;
			F[6] = E;
			local G = buffer.readu8(Bytecode, Pointer);
			F[7] = G;
			Pointer = Pointer + 1;
			local H = buffer.readu32(Bytecode, Pointer);
			Pointer = Pointer + 4;
			for I = 0, H - 1 do
				local J = buffer.readu8(Bytecode, Pointer);
				Pointer = Pointer + 1;
				if J ~= 0 then
					if J ~= 1 then
						if J == 2 then
							local K = buffer.readu32(Bytecode, Pointer);
							Pointer = Pointer + 4;
							B[I] = buffer.readstring(Bytecode, Pointer, K);
							Pointer = Pointer + K;
						else
							B[I] = {};
						end;
					else
						B[I] = buffer.readf64(Bytecode, Pointer);
						Pointer = Pointer + 8;
					end;
				else
					B[I] = nil;
				end;
			end;
			local I = buffer.readu32(Bytecode, Pointer);
			Pointer = Pointer + 4;
			for J = 0, I - (1) do
				local K = buffer.readu32(Bytecode, Pointer);
				D[J] = setmetatable({}, {
					__index = function(L, M)
						if M ~= 0 then
							if M ~= 90 then
								if M ~= 2 then
									if M ~= 206 then
										if M ~= 4 then
											if M == 192 then
												return K;
											end;
										else
											return u(K);
										end;
									else
										return t(K);
									end;
								else
									return s(K);
								end;
							else
								return r(K);
							end;
						else
							return q(K);
						end;
					end
				});
				Pointer = Pointer + 4;
			end;
			local J = buffer.readu32(Bytecode, Pointer);
			Pointer = Pointer + 4;
			for K = 1, J do
				local L = A();
				C[L[126]] = L;
			end;
			return setmetatable({}, {
				__iter = function()
					while true do
					end;
				end,
				__index = F
			});
		end;
		return A();
	end;
	local function Wrap(Chunk, Upvalues, Env)
		return function(...)
			local C, Stack, E, Instructions, PC, Args, I, J = Chunk[9], {}, 1, Chunk[8], 0, {
				...
			}, Chunk[31], {};
			local K = setmetatable({}, {
				__index = function(K, L)
					local M = J[L];
					local N = M[1];
					if N == 0 then
						return M[2];
					end;
					if N == 1 then
						return Stack[M[2]];
					end;
					if N == 2 then
						return Upvalues[M[2]];
					end;
				end,
				__newindex = function(K, L, M)
					local N = J[L];
					local O = N[1];
					if O == 0 then
						J[L][2] = M;
						return;
					end;
					if O == 1 then
						Stack[N[2]] = M;
						return;
					end;
					Upvalues[N[2]] = M;
				end
			});
			for L = 1, #Args do
				Stack[L - (1)] = Args[L];
			end;
			while true do
				local Instr = Instructions[PC];
				local Enum = Instr[0];
				if Enum ~= 56 then
					if Enum ~= 27 then
						if Enum ~= 21 then
							if Enum ~= 74 then
								if Enum ~= 25 then
									if Enum ~= 6 then
										if Enum ~= 22 then
											if Enum ~= 53 then
												if Enum ~= 40 then
													if Enum ~= 65 then
														if Enum ~= 4 then
															if Enum ~= 73 then
																if Enum ~= 64 then
																	if Enum ~= 15 then
																		if Enum ~= 39 then
																			if Enum ~= 5 then
																				if Enum ~= 12 then
																					if Enum ~= 52 then
																						if Enum ~= 57 then
																							if Enum ~= 14 then
																								if Enum == 37 then
																									local N, O, P = Instr[206], Instr[2], Instr[90];
																									Stack[P] = Stack[O] % Stack[N];
																								end;
																							else
																								local N, O, P = Instr[90], Instr[2], Instr[206];
																								Stack[O][Stack[P]] = Stack[N];
																							end;
																						else
																							local N, O = Instr[4], Instr[90];
																							local P, Q, R = Stack[O + (1)], Stack[O + (2)], Stack[O];
																							local S = P > 0 and Q < R or P < 0 and Q > R;
																							if S then
																								Stack[O + (2)] = Q + P;
																								PC = PC + N;
																							end;
																						end;
																					else
																						local N, O = Instr[90], Instr[2];
																						Stack[N] = #Stack[O];
																					end;
																				else
																					local N, O, P = Instr[90], Instructions[PC + 1][192], Instr[4] - (1);
																					PC = PC + 1;
																					local Q = bit32.rshift(O, 30);
																					if Q > 1 then
																						local R = Env[C[bit32.band(bit32.rshift(O, 20), 1023)]];
																						local S = R[C[bit32.band(bit32.rshift(O, 10), 1023)]];
																						if Q > 2 then
																							Stack[N] = S[C[bit32.band(O, 1023)]];
																						else
																							Stack[N] = S;
																						end;
																					else
																						Stack[N] = Env[C[P]];
																					end;
																				end;
																			else
																				local N, O = Instr[4], Instr[90];
																				Stack[O] = C[N];
																			end;
																		else
																			local N, O, P = Instr[2], Instr[90], Instr[206];
																			Stack[O] = Stack[N] + C[P];
																		end;
																	else
																		local N, O, P = Instr[2], Instructions[PC + (1)][192], Instr[90];
																		Stack[P] = Stack[N][C[O]];
																		PC = PC + 1;
																	end;
																else
																	local N, O = Instr[90], Instr[4];
																	local P = C[O];
																	local Q = I[P];
																	for R = 0, Q[7] - (1) do
																		PC = PC + 1;
																		local S = Instructions[PC];
																		local T = S[90];
																		J[R] = {
																			[1] = T
																		};
																		if T == 0 then
																			J[R][2] = Stack[S[2]];
																		else
																			J[R][2] = S[2];
																		end;
																	end;
																	Stack[N] = Wrap(Q, K, Env);
																end;
															else
																local N, O, P = Instr[206], Instr[90], Instr[2];
																local Q = Instructions[PC + N + (1)][192];
																local R, S, T = r(Q), t(Q) - (1), v[O];
																local U = table.pack(T(Stack[P]));
																if S == (-1) then
																	E = R + (#U);
																	S = #U;
																end;
																table.move(U, 1, S, R, Stack);
																PC = PC + N + (1);
															end;
														else
															local N, O = Instr[90], Instr[4];
															Stack[N] = O;
														end;
													else
														local N = Instr[90];
														E = E + N;
														table.move(Args, 1, N, 0, Stack);
													end;
												else
													local N, O, P = Instr[206], Instr[90], Instr[2];
													Stack[O] = Stack[P] - C[N];
												end;
											else
												local N = Instr[90];
												Stack[N] = {};
												PC = PC + 1;
											end;
										else
											local N, O = Instr[2] - (1), Instr[90];
											local P;
											if N == (-1) then
												P = E;
											else
												P = O + N;
											end;
											P = P - 1;
											return table.unpack(Stack, O, P);
										end;
									else
										local N, O = Instr[2], Instr[90];
										local P = Stack[N];
										Stack[O] = P;
									end;
								else
									local N, O = Instr[90], Instr[4];
									if Stack[N] then
										PC = PC + O;
									end;
								end;
							else
								local N, O, P, Q = Instructions[PC + (1)][192], Instr[90], Instr[206], Instr[2];
								PC = PC + 1;
								local R = Instructions[PC + P][192];
								PC = PC + P;
								local S, T, U = t(R) - (1), v[O], r(R);
								local V = table.pack(T(Stack[Q], Stack[N]));
								if S == (-1) then
									E = U + (#V);
									S = #V;
								end;
								table.move(V, 1, S, U, Stack);
							end;
						else
							local N, O, P = Instr[90], Instr[2], Instr[206] - 1;
							local Q = Stack[N];
							local R;
							if O == 0 then
								R = E;
							else
								R = N + O;
							end;
							local S = table.pack(Q(table.unpack(Stack, N + (1), R - (1))));
							if P == (-1) then
								E = N + (#S);
								P = #S;
							end;
							table.move(S, 1, P, N, Stack);
						end;
					else
						local N, O, P = Instructions[PC + (1)][192], Instr[90], Instr[4];
						if Stack[O] == Stack[N] then
							PC = PC + P;
						else
							PC = PC + 1;
						end;
					end;
				else
					local N, O = Instr[4], Instr[90];
					local P = Stack[O + 1];
					if not (Stack[O + 2] > Stack[O] and P > 0) then
						if Stack[O + (2)] < Stack[O] and P < 0 then
							PC = PC + N;
						end;
					else
						PC = PC + N;
					end;
				end;
				PC = PC + 1;
			end;
		end;
	end;
	return (Wrap(Deserialize(), {}, getfenv()))(...);
end)();
