# frozen_string_literal: true

class Dwarf < ApplicationRecord
  DISTRICTS = {
    stare_miasto: 0, nowy_dwor: 1, gaj: 2, nadodrze: 3, biskupin: 4, sepolno: 5,
    muchobor_wielki: 6, oltaszyn: 7, strachowice: 8, stablowice: 9, olbin: 10,
    maslice: 11, soltysowice: 11, grabiszyn: 12, szczepin: 13, kozanow: 14,
    marszowice: 15, muchobor_maly: 16, kleczkow: 17, zerniki: 18, zgorzelisko: 19,
    jerzmanowo: 20, ksieze_male: 21, pawlowice: 22, tarnogaj: 22, oporow: 23,
    krzyki_partynice: 24, osobowice: 25, pilczyce: 26, lipa_piotrowska: 27,
    klecina: 28, rakowiec: 29, poludnie: 30, wojanow: 31, zalesie: 32,
    polanowice: 33, opatowice: 34, zakrzow: 35, psie_pole: 36,
    rozanka: 37, bartoszowice: 38, zar: 39, przedmiescie_olawskie: 40,
    poswietne: 41, gadow_maly: 42, kuzniki: 43, klokoszyce: 44, borek: 45,
    brochow: 46, swjczyce: 47, zlotniki: 48, popowice: 49
  }.freeze

  has_many :founds
  has_many :users, through: :founds

  enum district: DISTRICTS
end
