package Lacuna::DB::Building::Food::Factory::Pancake;

use Moose;
extends 'Lacuna::DB::Building::Food::Factory';

has '+image' => ( 
    default => 'pancake', 
);

has '+name' => (
    default => 'Potato Pancake Factory',
);

has '+food_produced' (
    default => 'Potato Pancakes',
);

has '+converts_food' = (
    default => 'Potatos',
);

has '+conversion_ratio' = (
    default => sub { [100, 150] },
);

has '+food_to_build' => (
    default => -100,
);

has '+energy_to_build' => (
    default => -100,
);

has '+ore_to_build' => (
    default => -100,
);

has '+water_to_build' => (
    default => -100,
);

has '+waste_to_build' => (
    default => 100,
);

has '+time_to_build' => (
    default => 200,
);

has '+food_production' => (
    default => 150,
);

has '+energy_production' => (
    default => -25,
);

has '+ore_production' => (
    default => 0,
);

has '+water_production' => (
    default => -25,
);

has '+waste_production' => (
    default => 25,
);



no Moose;
__PACKAGE__->meta->make_immutable;
