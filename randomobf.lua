return (function(...)
	local a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p = table.unpack, bit32.rshift, buffer.readstring, string.char, buffer.readu32, table.move, buffer.readu8, typeof, buffer.readf64, table.pack, getfenv, tonumber, buffer.readi32, bit32.band, buffer.fromstring, setmetatable;
	local function q(r)
		return n(r, 255);
	end;
	local function r(s)
		return n(b(s, 8), 255);
	end;
	local function s(t)
		return n(b(t, 16), 255);
	end;
	local function t(u)
		return n(b(u, 24), 255);
	end;
	local function u(v)
		local w = b(v, 16);
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
	local function x()
		local y, z = o(w:gsub("..", function(y)
			return d(l(y, 16));
		end)), 20;
		local function A()
			local B, C, D = {}, {}, {};
			local E, F = "", {
				[9] = p({}, {
					__index = B
				}),
				[31] = p({}, {
					__index = C
				}),
				[8] = p({}, {
					__index = D
				})
			};
			F[126] = m(y, z);
			z = z + 84 - 80;
			while true do
				local G = g(y, z);
				z = z + 77 + (-76);
				if G ~= 0 then
					E = E .. d(G);
				else
					break;
				end;
			end;
			F[6] = E;
			local G = g(y, z);
			F[7] = G;
			z = z + 5 - 4;
			local H = e(y, z);
			z = z + 4;
			for I = 0, H - 1 do
				local J = g(y, z);
				z = z + 1;
				if J ~= 0 then
					if J ~= 1 then
						if J == 2 then
							local K = e(y, z);
							z = z + 180 + (-176);
							B[I] = c(y, z, K);
							z = z + K;
						else
							B[I] = {};
						end;
					else
						B[I] = i(y, z);
						z = z + 328 - 320;
					end;
				else
					B[I] = nil;
				end;
			end;
			local I = e(y, z);
			z = z + 344 - 340;
			for J = 0, I - (1) do
				local K = e(y, z);
				D[J] = p({}, {
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
				z = z + 4;
			end;
			local J = e(y, z);
			z = z + 4;
			for K = 1, J do
				local L = A();
				C[L[126]] = L;
			end;
			return p({}, {
				__iter = function()
					while true do
					end;
				end,
				__index = F
			});
		end;
		return A();
	end;
	local function y(z, A, B)
		return function(...)
			local C, D, E, F, G, H, I, J = z[9], {}, 1, z[8], 0, {
				...
			}, z[31], {};
			local K = p({}, {
				__index = function(K, L)
					local M = J[L];
					local N = M[1];
					if N == 0 then
						return M[2];
					end;
					if N == 1 then
						return D[M[2]];
					end;
					if N == 2 then
						return A[M[2]];
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
						D[N[2]] = M;
						return;
					end;
					A[N[2]] = M;
				end
			});
			for L = 1, #H do
				D[L - (1)] = H[L];
			end;
			while true do
				local L = F[G];
				local M = L[0];
				if M ~= 56 then
					if M ~= 27 then
						if M ~= 21 then
							if M ~= 74 then
								if M ~= 25 then
									if M ~= 6 then
										if M ~= 22 then
											if M ~= 53 then
												if M ~= 40 then
													if M ~= 65 then
														if M ~= 4 then
															if M ~= 73 then
																if M ~= 64 then
																	if M ~= 15 then
																		if M ~= 39 then
																			if M ~= 5 then
																				if M ~= 12 then
																					if M ~= 52 then
																						if M ~= 57 then
																							if M ~= 14 then
																								if M == 37 then
																									local N, O, P = L[206], L[2], L[90];
																									D[P] = D[O] % D[N];
																								end;
																							else
																								local N, O, P = L[90], L[2], L[206];
																								D[O][D[P]] = D[N];
																							end;
																						else
																							local N, O = L[4], L[90];
																							local P, Q, R = D[O + (1)], D[O + (2)], D[O];
																							local S = P > 0 and Q < R or P < 0 and Q > R;
																							if S then
																								D[O + (2)] = Q + P;
																								G = G + N;
																							end;
																						end;
																					else
																						local N, O = L[90], L[2];
																						D[N] = #D[O];
																					end;
																				else
																					local N, O, P = L[90], F[G + 1][192], L[4] - (1);
																					G = G + 1;
																					local Q = b(O, 30);
																					if Q > 1 then
																						local R = B[C[n(b(O, 20), 1023)]];
																						local S = R[C[n(b(O, 10), 1023)]];
																						if Q > 2 then
																							D[N] = S[C[n(O, 1023)]];
																						else
																							D[N] = S;
																						end;
																					else
																						D[N] = B[C[P]];
																					end;
																				end;
																			else
																				local N, O = L[4], L[90];
																				D[O] = C[N];
																			end;
																		else
																			local N, O, P = L[2], L[90], L[206];
																			D[O] = D[N] + C[P];
																		end;
																	else
																		local N, O, P = L[2], F[G + (1)][192], L[90];
																		D[P] = D[N][C[O]];
																		G = G + 71 - 70;
																	end;
																else
																	local N, O = L[90], L[4];
																	local P = C[O];
																	local Q = I[P];
																	for R = 0, Q[7] - (1) do
																		G = G + 47 + (-46);
																		local S = F[G];
																		local T = S[90];
																		J[R] = {
																			[1] = T
																		};
																		if T == 0 then
																			J[R][2] = D[S[2]];
																		else
																			J[R][2] = S[2];
																		end;
																	end;
																	D[N] = y(Q, K, B);
																end;
															else
																local N, O, P = L[206], L[90], L[2];
																local Q = F[G + N + (1)][192];
																local R, S, T = r(Q), t(Q) - (1), v[O];
																local U = j(T(D[P]));
																if S == (-1) then
																	E = R + (#U);
																	S = #U;
																end;
																f(U, 1, S, R, D);
																G = G + N + (1);
															end;
														else
															local N, O = L[90], L[4];
															D[N] = O;
														end;
													else
														local N = L[90];
														E = E + N;
														f(H, 1, N, 0, D);
													end;
												else
													local N, O, P = L[206], L[90], L[2];
													D[O] = D[P] - C[N];
												end;
											else
												local N = L[90];
												D[N] = {};
												G = G + 68 - 67;
											end;
										else
											local N, O = L[2] - (1), L[90];
											local P;
											if N == (-1) then
												P = E;
											else
												P = O + N;
											end;
											P = P - 1;
											return a(D, O, P);
										end;
									else
										local N, O = L[2], L[90];
										local P = D[N];
										D[O] = P;
									end;
								else
									local N, O = L[90], L[4];
									if D[N] then
										G = G + O;
									end;
								end;
							else
								local N, O, P, Q = F[G + (1)][192], L[90], L[206], L[2];
								G = G + 81 - 80;
								local R = F[G + P][192];
								G = G + P;
								local S, T, U = t(R) - (1), v[O], r(R);
								local V = j(T(D[Q], D[N]));
								if S == (-1) then
									E = U + (#V);
									S = #V;
								end;
								f(V, 1, S, U, D);
							end;
						else
							local N, O, P = L[90], L[2], L[206] - 1;
							local Q = D[N];
							if h(Q) ~= "function" then
							end;
							local R;
							if O == 0 then
								R = E;
							else
								R = N + O;
							end;
							local S = j(Q(a(D, N + (1), R - (1))));
							if P == (-1) then
								E = N + (#S);
								P = #S;
							end;
							f(S, 1, P, N, D);
						end;
					else
						local N, O, P = F[G + (1)][192], L[90], L[4];
						if D[O] == D[N] then
							G = G + P;
						else
							G = G + 80 - 79;
						end;
					end;
				else
					local N, O = L[4], L[90];
					local P = D[O + 1];
					if not (D[O + 2] > D[O] and P > 0) then
						if D[O + (2)] < D[O] and P < 0 then
							G = G + N;
						end;
					else
						G = G + N;
					end;
				end;
				G = G + 1;
			end;
		end;
	end;
	return (y(x(), {}, k()))(...);
end)();
