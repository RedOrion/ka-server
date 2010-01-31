package Lacuna::DB::Building::Food::Factory::Soup;

use Moose;
extends 'Lacuna::DB::Building::Food::Factory';

has '+image' => ( 
    default => 'soup', 
);

has '+name' => (
    default => 'Amalgus Bean Soup Cannery',
);

has '+food_produced' (
    default => 'Amalgus Bean Soup',
);

has '+converts_food' = (
    default => 'Amalgus Beans',
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
    default => -20,
);

has '+ore_production' => (
    default => 0,
);

has '+water_production' => (
    default => -30,
);

has '+waste_production' => (
    default => 25,
);



no Moose;
__PACKAGE__->meta->make_immutable;
