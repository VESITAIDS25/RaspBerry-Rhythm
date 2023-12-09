import { useState } from 'react'
import { Route, Routes } from 'react-router-dom'
import { Button } from '@/components/ui/button'
import { Login } from '@/pages'

function App() {

  return (
    
    <>
      <Routes>
        <Route path='/login' element={<Login />} />
  
      </Routes>
    </>
  )
}

export default App
