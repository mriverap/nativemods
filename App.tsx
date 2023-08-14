import {Button, SafeAreaView, Text} from 'react-native';
import React from 'react';
import {NativeModules} from 'react-native';

console.log(NativeModules.Counter);
NativeModules.Counter.increment(value => {
  console.log('Count is ', value);
});
console.log(NativeModules.Counter.getConstants());

const NativeModulesApp = () => {
  const decrement = () => {
    NativeModules.Counter.decrement()
      .then(result => console.log(result))
      .catch(e => console.log('Error encountered', e.message, e.code));
  };

  const decrementAsync = async () => {
    try {
      const result = await NativeModules.Counter.decrement();
      console.log('Result: ', result);
    } catch (e) {
      console.log('Error encountered', e.message, e.code);
    }
  };

  return (
    <SafeAreaView style={{marginHorizontal: 10}}>
      <Text>Native Modules App</Text>
      <Button title="Decrease Count" onPress={decrement} />
      <Button title="Decrease Count Async" onPress={decrementAsync} />
    </SafeAreaView>
  );
};

export default NativeModulesApp;
