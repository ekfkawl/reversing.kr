-- 시리얼 to 이름
local serial = '5B134977135E7D13'
-- xor 키값
local key = {0x10, 0x20, 0x30}
local res = ''

local k = 0
local len = string.len(serial);
for i=1, len, 2 do
    local s = string.sub(serial, i, i+1)

    if (k >= 3)
    then
        k = 1
    else
        k = k + 1
    end
    res = res .. string.char(tonumber(s, 16) ~ key[k])
end

print(res)

--[[

Easy Keygen.exe+1000 - sub esp,00000130
Easy Keygen.exe+1006 - push ebp
Easy Keygen.exe+1007 - push esi
Easy Keygen.exe+1008 - push edi
Easy Keygen.exe+1009 - mov ecx,00000018
Easy Keygen.exe+100E - xor eax,eax
Easy Keygen.exe+1010 - lea edi,[esp+11]
Easy Keygen.exe+1014 - mov byte ptr [esp+10],00
Easy Keygen.exe+1019 - mov byte ptr [esp+74],00
Easy Keygen.exe+101E - repe stosd
Easy Keygen.exe+1020 - stosw
Easy Keygen.exe+1022 - stosb
Easy Keygen.exe+1023 - mov ecx,00000031
Easy Keygen.exe+1028 - xor eax,eax
Easy Keygen.exe+102A - lea edi,[esp+75]
Easy Keygen.exe+102E - push "Easy Keygen.exe"+8060
Easy Keygen.exe+1033 - repe stosd
Easy Keygen.exe+1035 - stosw
Easy Keygen.exe+1037 - stosb
Easy Keygen.exe+1038 - mov byte ptr [esp+10],10
Easy Keygen.exe+103D - mov byte ptr [esp+11],20
Easy Keygen.exe+1042 - mov byte ptr [esp+12],30
Easy Keygen.exe+1047 - call "Easy Keygen.exe"+11B9
Easy Keygen.exe+104C - add esp,04
Easy Keygen.exe+104F - lea eax,[esp+10]
Easy Keygen.exe+1053 - push eax
Easy Keygen.exe+1054 - push "Easy Keygen.exe"+805C
Easy Keygen.exe+1059 - call "Easy Keygen.exe"+11A2
Easy Keygen.exe+105E - lea edi,[esp+18]
Easy Keygen.exe+1062 - or ecx,-01
Easy Keygen.exe+1065 - xor eax,eax
Easy Keygen.exe+1067 - add esp,08
Easy Keygen.exe+106A - xor ebp,ebp
Easy Keygen.exe+106C - xor esi,esi
Easy Keygen.exe+106E - repne scasb
Easy Keygen.exe+1070 - not ecx
Easy Keygen.exe+1072 - dec ecx
Easy Keygen.exe+1073 - test ecx,ecx
Easy Keygen.exe+1075 - jle "Easy Keygen.exe"+10B6
Easy Keygen.exe+1077 - cmp esi,03
Easy Keygen.exe+107A - jl "Easy Keygen.exe"+107E
Easy Keygen.exe+107C - xor esi,esi
Easy Keygen.exe+107E - movsx ecx,byte ptr [esp+esi+0C]
Easy Keygen.exe+1083 - movsx edx,byte ptr [esp+ebp+10]
Easy Keygen.exe+1088 - xor ecx,edx
Easy Keygen.exe+108A - lea eax,[esp+74]
Easy Keygen.exe+108E - push ecx
Easy Keygen.exe+108F - push eax
Easy Keygen.exe+1090 - lea ecx,[esp+7C]
Easy Keygen.exe+1094 - push "Easy Keygen.exe"+8054
Easy Keygen.exe+1099 - push ecx
Easy Keygen.exe+109A - call "Easy Keygen.exe"+1150
Easy Keygen.exe+109F - add esp,10
Easy Keygen.exe+10A2 - inc ebp
Easy Keygen.exe+10A3 - lea edi,[esp+10]
Easy Keygen.exe+10A7 - or ecx,-01
Easy Keygen.exe+10AA - xor eax,eax
Easy Keygen.exe+10AC - inc esi
Easy Keygen.exe+10AD - repne scasb
Easy Keygen.exe+10AF - not ecx
Easy Keygen.exe+10B1 - dec ecx
Easy Keygen.exe+10B2 - cmp ebp,ecx
Easy Keygen.exe+10B4 - jl "Easy Keygen.exe"+1077
Easy Keygen.exe+10B6 - mov ecx,00000019
Easy Keygen.exe+10BB - xor eax,eax
Easy Keygen.exe+10BD - lea edi,[esp+10]
Easy Keygen.exe+10C1 - push "Easy Keygen.exe"+8044
Easy Keygen.exe+10C6 - repe stosd
Easy Keygen.exe+10C8 - call "Easy Keygen.exe"+11B9
Easy Keygen.exe+10CD - add esp,04
Easy Keygen.exe+10D0 - lea edx,[esp+10]
Easy Keygen.exe+10D4 - push edx
Easy Keygen.exe+10D5 - push "Easy Keygen.exe"+805C
Easy Keygen.exe+10DA - call "Easy Keygen.exe"+11A2
Easy Keygen.exe+10DF - add esp,08
Easy Keygen.exe+10E2 - lea esi,[esp+74]
Easy Keygen.exe+10E6 - lea eax,[esp+10]
Easy Keygen.exe+10EA - mov dl,[eax]
Easy Keygen.exe+10EC - mov cl,dl
Easy Keygen.exe+10EE - cmp dl,[esi]
Easy Keygen.exe+10F0 - jne "Easy Keygen.exe"+110E
Easy Keygen.exe+10F2 - test cl,cl
Easy Keygen.exe+10F4 - je "Easy Keygen.exe"+110A
Easy Keygen.exe+10F6 - mov dl,[eax+01]
Easy Keygen.exe+10F9 - mov cl,dl
Easy Keygen.exe+10FB - cmp dl,[esi+01]
Easy Keygen.exe+10FE - jne "Easy Keygen.exe"+110E
Easy Keygen.exe+1100 - add eax,02
Easy Keygen.exe+1103 - add esi,02
Easy Keygen.exe+1106 - test cl,cl
Easy Keygen.exe+1108 - jne "Easy Keygen.exe"+10EA
Easy Keygen.exe+110A - xor eax,eax
Easy Keygen.exe+110C - jmp "Easy Keygen.exe"+1113
Easy Keygen.exe+110E - sbb eax,eax
Easy Keygen.exe+1110 - sbb eax,-01
Easy Keygen.exe+1113 - pop edi
Easy Keygen.exe+1114 - pop esi
Easy Keygen.exe+1115 - test eax,eax
Easy Keygen.exe+1117 - pop ebp
Easy Keygen.exe+1118 - jne "Easy Keygen.exe"+1130
Easy Keygen.exe+111A - push "Easy Keygen.exe"+8038
Easy Keygen.exe+111F - call "Easy Keygen.exe"+11B9
Easy Keygen.exe+1124 - add esp,04
Easy Keygen.exe+1127 - xor eax,eax
Easy Keygen.exe+1129 - add esp,00000130
Easy Keygen.exe+112F - ret
Easy Keygen.exe+1130 - push "Easy Keygen.exe"+8030
Easy Keygen.exe+1135 - call "Easy Keygen.exe"+11B9
Easy Keygen.exe+113A - add esp,04
Easy Keygen.exe+113D - xor eax,eax
Easy Keygen.exe+113F - add esp,00000130
Easy Keygen.exe+1145 - ret

--]]

