package atividade4;

import java.util.HashMap;
import java.util.Map;

public class Batalha {
    private final Map<String, Boss> arena;

    public Batalha(Map<String, Boss> arena) {
        this.arena = (arena == null) ? new HashMap<>() : new HashMap<>(arena);
    }

    public void adicionarBoss(Boss boss) {
        if (boss != null) {
            arena.put(boss.getId(), boss);
        }
    }

    public void iniciarBatalha(String idBoss) {
        Boss b = arena.get(idBoss);
        if (b == null) {
            System.out.println("Nenhum boss encontrado com id: " + idBoss);
            return;
        }
        b.iniciarFase();
    }
}

