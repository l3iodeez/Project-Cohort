class CreateCharacterModel < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.belongs_to :user, index: true
     # t.has_and_belongs_to_many :campaigns

      ## Vitals
      t.references :user, index: true
      t.string :name
      t.string :race
      t.json :ch_classes ## [{"class" => "Bard", "level" => 5},{"class" => "Rogue", "level" => 2}]
      t.integer :size
      t.string :sex
      t.string :height
      t.string :weight
      t.string :eyes
      t.string :skin
      t.string :hair
      t.integer :age
      t.string :alignment
      t.string :deity
      t.integer :init
      t.json :speed ## {"base" => 30, "armor" => 15, "fly" => 15, "swim" => 0, "climb" => 15, "burrow" => 0}
      t.string :languages

      ## Defense
      t.json :dr ## {“silver” => 5, “cold iron” => 5}
      t.integer :SR
      t.integer :res_fire
      t.integer :res_ice
      t.integer :res_lightning
      t.integer :res_acid
      t.integer :res_sonic
      t.integer :bonus_CMB

      ## Offense
      t.integer :BAB
      t.integer :bonus_CMD


      ## Abilities 
      t.integer :STR
      t.integer :DEX
      t.integer :CON
      t.integer :INT
      t.integer :WIS
      t.integer :CHA

      ## Armor & AC
      t.integer :AC_armor
      t.integer :AC_shield
      t.integer :AC_dodge
      t.integer :AC_natural
      t.integer :AC_deflect
      t.integer :AC_misc
      t.integer :ACP


      ## HP
      t.integer :max_HP
      t.integer :current_HP
      t.integer :temp_HP
      t.integer :nonlethal

      ##Saves
      t.integer :fortitude
      t.integer :reflex
      t.integer :will
      t.integer :temp_fortitude
      t.integer :temp_reflex
      t.integer :temp_will

      ## Skills 
      t.json :acrobatics ## {:class => true, :ranks => 8, :bonus => 0}
      t.json :appraise
      t.json :bluff
      t.json :climb
      t.json :craft       ## {:arms_and_armor => {:class => true, :ranks =>  8, :bonus => 0}, :alchemy => {:class => false, :ranks =>  3, :bonus => 0}}
      t.json :diplomacy
      t.json :disable_device
      t.json :disguise
      t.json :escape_artist
      t.json :fly
      t.json :handle_animal
      t.json :heal
      t.json :intimidate
      t.json :knowledge     
      t.json :linguistics
      t.json :perception
      t.json :perform
      t.json :profession  
      t.json :ride
      t.json :sense_motive
      t.json :slight_of_hand
      t.json :spellcraft
      t.json :stealth
      t.json :survival
      t.json :swim
      t.json :use_magic_device

      ##Attacks
      t.json :attacks ## [{:type => "melee", :name => “BigassSword”, :bonuses => [20,15,10,5], :damage =>[{"numDice": 2, "dieSides": 8, "constant": 5},{"numDice": 1, "dieSides": 6, "constant": 0}], :crit_range => 19, :special => "+2 against bloogies"},{...},]

     ## Other Fields
      t.json :spells
      t.json :abilities
      t.json :description
      t.attachment :image ## make sure paperclip is loaded first
      

      t.timestamps null: false
    end
  end
end
