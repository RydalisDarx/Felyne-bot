module Commands
  # Command Module
  module Sets
    extend Discordrb::Commands::CommandContainer
    command(
      :sets,
      description: 'Lists recommended sets for <weapon>.',
      usage: 'sets <weapon>',
      min_args: 1
    ) do |event, *weapon|
      weapon = weapon.join(' ')
      if %w(Lance lance L l).include? weapon
        event.respond "Lance Sets:\nSnS and Lance (preferrably SnS) (Guard+2 Guard Up Health+2 Eva dist+2): <http://monsterhunteronline.in/armor/?1=61681&2=61532&3=61533&4=61294&5=61535&9=46&10=8&8=81007&18=29182&19=29007&27=29264&28=29264&26=29251&24=29252&21=29090&15=29264>\nMelee Super Damage (Ch+2 Sharp Sharpness+1): <http://monsterhunteronline.in/armor/?1=61201&2=61392&3=61203&4=61204&5=61425&9=73&10=4&15=29225&18=29226&21=29226&24=29226>"
      end
      if %w(Gunlance gunlance GL Gl gl).include? weapon
        event.respond '``Gunlance Sets:``'
      end
      if [
        'Sword and Shield', 'sword and shield', 'SnS', 'SNS', 'sns'
      ].include? weapon
        event.respond "Sword and Shield Sets:\nSnS and Lance (preferrably SnS) (Guard+2 Guard Up Health+2 Eva dist+2): <http://monsterhunteronline.in/armor/?1=61681&2=61532&3=61533&4=61294&5=61535&9=46&10=8&8=81007&18=29182&19=29007&27=29264&28=29264&26=29251&24=29252&21=29090&15=29264>\nMelee Super Damage (Ch+2 Sharp Sharpness+1): <http://monsterhunteronline.in/armor/?1=61201&2=61392&3=61203&4=61204&5=61425&9=73&10=4&15=29225&18=29226&21=29226&24=29226>"
      end
      if %w(Greatsword greatsword GS Gs gs).include? weapon
        event.respond "Greatsword Sets:\nMelee Super Damage (Ch+2 Sharp Sharpness+1): <http://monsterhunteronline.in/armor/?1=61201&2=61392&3=61203&4=61204&5=61425&9=73&10=4&15=29225&18=29226&21=29226&24=29226>"
      end
      if %w(Longsword longsword LS Ls ls).include? weapon
        event.respond "Longsword Sets:\nMelee Super Damage (Ch+2 Sharp Sharpness+1): <http://monsterhunteronline.in/armor/?1=61201&2=61392&3=61203&4=61204&5=61425&9=73&10=4&15=29225&18=29226&21=29226&24=29226>"
      end
      if %w(Hammer hammer H h).include? weapon
        event.respond "Hammer Sets:\nMelee Super Damage (Ch+2 Sharp Sharpness+1): <http://monsterhunteronline.in/armor/?1=61201&2=61392&3=61203&4=61204&5=61425&9=73&10=4&15=29225&18=29226&21=29226&24=29226>"
      end
      if [
        'Dual Blades', 'dual blades', 'DB', 'Db', 'db', 'DS', 'Ds', 'ds',
        'Dual Swords', 'dual swords'
      ].include? weapon
        event.respond "Dual Blades Sets:\nMelee Super Damage (Ch+2 Sharp Sharpness+1): <http://monsterhunteronline.in/armor/?1=61201&2=61392&3=61203&4=61204&5=61425&9=73&10=4&15=29225&18=29226&21=29226&24=29226>"
      end
      if ['Hunting Horn', 'hunting horn', 'HH', 'Hh', 'hh'].include? weapon
        event.respond "Hunting Horn Sets:\nMelee Super Damage (Ch+2 Sharp Sharpness+1): <http://monsterhunteronline.in/armor/?1=61201&2=61392&3=61203&4=61204&5=61425&9=73&10=4&15=29225&18=29226&21=29226&24=29226>"
      end
      if %w(Bow bow B b).include? weapon
        event.respond "Bow Sets:\nSleep C+ Set: <http://monsterhunteronline.in/armor/?1=61496&2=61497&3=61358&4=61499&5=61500&8=81002&9=38&10=6&15=29010&16=29010&18=29262&21=29126&24=29124&25=29262&27=29262&28=29262>\nBetter Sleep C+ Set: <http://monsterhunteronline.in/armor/?1=61496&2=61497&3=61668&4=61499&5=61500&8=81002&9=38&10=7&15=29010&16=29010&18=29262&24=29082&25=29082&27=29262&28=29262&21=29126>\nGeneric Ranged Set: <http://monsterhunteronline.in/armor/?4=61379&5=61340&2=61457&3=61458&1=61226&8=81007&9=0&10=10&17=29003&18=29001&21=29232&26=29003&29=29294>"
      end
      if %w(Bowgun bowgun BG Bg bg).include? weapon
        event.respond "Bowgun Sets:\nRecoil + Set: <http://monsterhunteronline.in/armor/?1=61496&4=61499&5=61500&2=61357&3=61358&8=81007&9=32&10=4&15=29273&16=29273&18=29273&19=29273&21=29273&22=29273&23=29124&24=29124&25=29124&27=29124&28=29124>\nGeneric Ranged Set: <http://monsterhunteronline.in/armor/?4=61379&5=61340&2=61457&3=61458&1=61226&8=81007&9=0&10=10&17=29003&18=29001&21=29232&26=29003&29=29294>"
      end
      if [
        'Switch Axe', 'switch axe', 'swaxe', 'saxe', 'axe', 'switch'
      ].include? weapon
        event.respond "Switch Axe Sets:\nEvasion + Sharp Set: <http://monsterhunteronline.in/armor/?3=61713&5=61715&1=61511&2=61512&4=61204&15=29158&18=29157&9=59&10=4>"
      end
      command_log('sets', event.user.name)
      nil
    end
  end
end
