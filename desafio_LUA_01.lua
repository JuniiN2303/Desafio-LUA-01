os.execute("chcp 65001")
os.execute("cls")

-- Atribuições do NPC
local nameNpc = "Mini Zumbi"
local description = "Um pequeno zumbi assustador e veloz, aparece derrepente e te assusta."
local emoji = "🧠 🧠 🧠"
local item = "Carne de Zumbi"

--Atributos do NPC
local attackNpc, defenseNPC, hpNpc, speedNpc, inteligenceNpc = 6, 2, 10, 10, 8

-- Barra de Status do NPC
local function getProgressBar(atributte)
    local fullChar = "🟩"
    local emptyChat = "⬛"
    local result = ""

        for i = 1, 10, 1 do
            if i <= atributte then
                result = result .. fullChar
            else
                result = result .. emptyChat
            end
        end
    return result
end

-- Aqui está o RG do NPC
print("=======================================================")
print("| Nome do NPC: " .. nameNpc)
print("| Descrição do NPC: " .. description)
print("| Emoji: " .. emoji)
print("| Item Dropado: " .. item)
print("| ")
print("| Atributos NPC: ")
print("|        Ataque: " .. getProgressBar(attackNpc))
print("|        Defesa: " .. getProgressBar(defenseNPC))
print("|    Vitalidade: " .. getProgressBar(hpNpc))
print("|    Velocidade: " .. getProgressBar(speedNpc))
print("|  Inteligência: " .. getProgressBar(inteligenceNpc))
print("=======================================================")

-- Espaçamento...
print("")

-- Repetir toda a lógica até o Usuário selecionar uma das opções corretas (Atacar ou Correr)
repeat

-- Você vai atacar ou arregar?
print("Você deseja confrontar esse NPC? (1) Sim e (2) Não")
local battleNpc = tonumber(io.read())

-- Espaçamento...
print("")

-- enquanto o NPC não morre você causa 3 de dano nele e muda a barra do NPC... ou decidiu arregar para o mini.
if battleNpc == 1 then
    print("Você inicou a Batalha contra o " .. nameNpc)
    while hpNpc > 0 do
        hpNpc = hpNpc - 3
        print("Você causou 3 de Dano no " .. nameNpc)
        print(getProgressBar(hpNpc))
    end
    print ("Você derrotou o " .. nameNpc .. " e saiu intacto da Feroz Batalha!")
    print ("Você recebeu um item dropado do NPC: " .. item)
elseif battleNpc == 2 then
    print("Você decidiu não arregar contra o " .. nameNpc)
else
    print("Você colocou um número inválido. Por favor, escolha o número 1 ou 2.")
end
until battleNpc == 1 or battleNpc == 2