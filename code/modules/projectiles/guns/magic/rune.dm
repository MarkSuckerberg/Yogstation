/obj/item/gun/magic/rune
	slot_flags = list(ITEM_SLOT_BELT,ITEM_SLOT_POCKET)
	icon_state = "rune"
	w_class = WEIGHT_CLASS_SMALL
	max_charges = 10
	charges = 4
	recharge_rate = 5
	charge_tick = 0

/obj/item/gun/magic/rune/icycle_rune
	name = "Icycle Rune"
	desc = "This obsidian rune has the ability to shoot icycles out of it. You do not want to hit yourself with it."
	fire_sound = 'sound/magic/fireball.ogg'
	icon_state = "icycle-rune"
	item_state = "icycle-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_icycle
	max_charges = 6
	charges = 2
	recharge_rate = 4
	charge_tick = 0

/obj/item/gun/magic/rune/spear_rune
	name = "Spear Rune"
	desc = "This obsidian rune has the ability to shoot spears out of it. You do not want to hit yourself with it."
	fire_sound = 'sound/magic/fireball.ogg'
	icon_state = "spear-rune"
	item_state = "spear-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_spear
	max_charges = 6
	charges = 0
	recharge_rate = 4
	charge_tick = 0


/obj/item/gun/magic/rune/heal_rune
	name = "Healing Rune"
	desc = "This obsidian rune has the ability to shoot healing bolts out of it. You want to hit yourself with it."
	fire_sound = 'sound/magic/staff_healing.ogg'
	icon_state = "heal-rune"
	item_state = "heal-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_heal
	max_charges = 6
	charges = 0
	recharge_rate = 4
	charge_tick = 0

/obj/item/gun/magic/rune/fire_rune
	name = "Fire Rune"
	desc = "This obsidian rune has the ability to shoot fire out of it. You do not want to hit yourself with it."
	fire_sound = 'sound/magic/fireball.ogg'
	icon_state = "fire-rune"
	item_state = "fire-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_fire
	max_charges = 6
	charges = 0
	recharge_rate = 4
	charge_tick = 0


/obj/item/gun/magic/rune/honk_rune
	name = "Banana Rune"
	desc = "This obsidian rune has the ability to shoot banana peels out of it. Honk."
	fire_sound = 'sound/items/airhorn.ogg'
	icon_state = "honk-rune"
	item_state = "honk-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_honk
	max_charges = 6
	charges = 0
	recharge_rate = 4
	charge_tick = 0

/obj/item/gun/magic/rune/chaos_rune
	name = "Chaos Rune"
	desc = "This obsidian rune has the ability to shoot every runic spell out of it. You can't be sure what will come out of this."
	fire_sound = 'sound/magic/staff_chaos.ogg'
	icon_state = "chaos-rune"
	item_state = "chaos-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_chaos
	max_charges = 6
	charges = 0
	recharge_rate = 4
	charge_tick = 0
	//Please update the var below with more projectiles if they get added
	var/allowed_projectile_types = list(/obj/item/projectile/magic/runic_honk, /obj/item/projectile/magic/runic_fire, /obj/item/projectile/magic/runic_spear, /obj/item/projectile/magic/runic_bomb, /obj/item/projectile/magic/runic_heal, /obj/item/projectile/temp/runic_icycle, /obj/item/projectile/magic/runic_toxin, /obj/item/projectile/magic/runic_death, /obj/item/projectile/magic/runic_mutation, /obj/item/projectile/magic/runic_resizement)

//shamelessly stolen from chaos staff honk
/obj/item/gun/magic/rune/chaos_rune/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	chambered.projectile_type = pick(allowed_projectile_types)
	. = ..()


/obj/item/gun/magic/rune/bomb_rune
	name = "Bomb Rune"
	desc = "This obsidian rune has the ability to shoot bombs out of it. Be careful."
	fire_sound = 'sound/effects/explosion1.ogg'
	icon_state = "bomb-rune"
	item_state = "bomb-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_bomb
	max_charges = 1
	charges = 0
	recharge_rate = 1
	charge_tick = 0

/obj/item/gun/magic/rune/toxic_rune
	name = "Toxic Rune"
	desc = "This obsidian rune has the ability to shoot syringes with toxins inside. You do not want to inject yourself with it"
	fire_sound = "syringeproj"
	item_state = "toxic-rune"
	icon_state = "toxic-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_toxin
	max_charges = 5
	charges = 0
	recharge_rate = 1
	charge_tick = 1

//I am retard

/obj/item/gun/magic/rune/death_rune
	name = "Death To The Dead Rune"
	desc = "This rune has the ability to put to grave some things that shouldnt rise from their grave. May it be useful for you"
	fire_sound = "sound/magic/staff_animation.ogg"
	item_state = "death-rune"
	icon_state = "death-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_death
	max_charges = 5
	charges = 0
	recharge_rate = 1
	charge_tick = 1

/obj/item/gun/magic/rune/bullet_rune
	name = "Bullet Rune"
	desc = "This obsidian rune has the ability to shoot bullets out of it. I have yet to see one who will outsmart them"
	icon_state = "bullet-rune"
	item_state = "bullet-rune"
	fire_sound = "sound/weapons/bulletflyby2.ogg"
	ammo_type = /obj/item/ammo_casing/magic/runic_bullet
	max_charges = 5
	charges = 0
	recharge_rate = 2
	charge_tick = 1
	spread = 1

/obj/item/gun/magic/rune/mutation_rune
	name = "Mutation Rune"
	desc = "This rune has the ability to mutate the target. You do not want to mutate right?"
	fire_sound = "sound/magic/mutate.ogg"
	icon_state = "mutation-rune"
	item_state = "mutation-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_mutation
	max_charges = 5
	charges = 0
	recharge_rate = 2
	charge_tick = 1
	spread = 1

/obj/item/gun/magic/rune/resizement_rune
	name = "Resizement Rune"
	desc = "This obsidian rune has the ability to change the targets size. I do not believe there is a setting for accuracy."
	fire_sound = "sound/magic/mutate.ogg"
	icon_state = "resize-rune"
	item_state = "resize-rune"
	ammo_type = /obj/item/ammo_casing/magic/runic_resizement
	max_charges = 5
	charges = 0
	recharge_rate = 2
	charge_tick = 1
